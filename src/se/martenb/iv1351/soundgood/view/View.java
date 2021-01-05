/*
 * Author: Mårten Björkman
 * Course: IV1351 (HT201)
 * Program: TIDAB
 * Email: marteb@kth.se
 */
package se.martenb.iv1351.soundgood.view;

import se.martenb.iv1351.soundgood.controller.Controller;
import se.martenb.iv1351.soundgood.controller.OperationFailedException;
import se.martenb.iv1351.soundgood.dto.InstrumentAvailableDTO;
import se.martenb.iv1351.soundgood.dto.RentedInstrumentDTO;
import se.martenb.iv1351.soundgood.dto.StudentDTO;
import se.martenb.iv1351.soundgood.util.ErrorLogger;

import java.util.*;

/**
 * The default view for the application.
 */
public class View {
    private final Controller controller;
    ErrorMessageHandler errorMessageHandler = new ErrorMessageHandler();
    ErrorLogger errorLogger;
    private final Scanner sc = new Scanner(System.in);

    /**
     * Create a new view.
     * @param controller The application controller.
     */
    public View(Controller controller) {
        this.controller = controller;
        errorLogger = new ErrorLogger();
    }

    private void exitProgram() {
        System.out.println("Quitting..");
        System.exit(0);
    }

    private boolean confirmationPrompt() {
        String confirm = "";
        while (sc.hasNextLine() && !(confirm = sc.nextLine().toLowerCase())
                .matches("^(y(es|)|n(o|))$")) {
            System.out.println("Enter 'Y' or 'N'..");
        }

        return confirm.matches("^y(es|)$");
    }

    private class MultipleChoiceListPrompt<ChoiceType> {
        private final List<ChoiceType> choiceList;
        MultipleChoiceListPrompt(List<ChoiceType> choiceList) {
            this.choiceList = choiceList;
        }
        int showPrompt() {
            int option = 0;
            int padLength = ((choiceList.size() + 1) + "").length();
            for(ChoiceType currentChoice : choiceList) {
                String paddedOption = String.format("%1$" + padLength + "s",
                        (option + 1)).replace(' ', '0');
                System.out.println(paddedOption + ". " + currentChoice.toString());
                option++;
            }

            String paddedOption = String.format("%1$" + padLength + "s",
                    (option + 1)).replace(' ', '0');
            System.out.println(paddedOption + ". Go back.");

            int chosenOption = -1;
            while (sc.hasNextInt() && ((chosenOption = sc.nextInt() - 1) < 0 ||
                    chosenOption > choiceList.size())) {
                System.out.println("Try again!\n Select an option between '1' and '" +
                        (choiceList.size() + 1) + "'...");
            }
            if (sc.hasNextLine())
                sc.nextLine();
            if (chosenOption >= choiceList.size())
                return -1;
            return chosenOption;
        }
    }

    private StudentAction multipleChoiceMenuPrompt(HashMap<StudentAction, String> choiceMap,
                                               List<StudentAction> choiceOrder) {
        int option = 1;
        Hashtable<Integer, StudentAction> optionValue = new Hashtable<>();
        for(StudentAction currentChoice : choiceOrder) {
            int padLength = (choiceOrder.size() + "").length();
            String paddedOption = String.format("%1$" + padLength + "s", option).replace(' ', '0');
            System.out.println(paddedOption + ". " + choiceMap.get(currentChoice));
            optionValue.put(option, currentChoice);
            option++;
        }
        int chosenOption = -1;
        while (sc.hasNextInt() && ((chosenOption = sc.nextInt()) < 1 ||
                chosenOption > choiceOrder.size())) {
            System.out.println("Try again!\n Select an option between '1' and '" +
                    choiceOrder.size() + "'...");
        }
        if (sc.hasNextLine())
            sc.nextLine();
        return optionValue.get(chosenOption);
    }

    private StudentDTO developerLoginPrompt() throws OperationFailedException {
        StudentDTO student = null;

        HashMap<StudentAction, String> loginMap = new HashMap<>();
        loginMap.put(StudentAction.LOGIN_BANKID, "Mobile BankID.");
        loginMap.put(StudentAction.LOGIN_EMAIL, "Email and password.");
        loginMap.put(StudentAction.LOGIN_STUDENT_ID, "Student ID and password.");
        loginMap.put(StudentAction.LOGOUT, "Exit.");
        List<StudentAction> loginOrder = new ArrayList<>();
        loginOrder.add(StudentAction.LOGIN_BANKID);
        loginOrder.add(StudentAction.LOGIN_EMAIL);
        loginOrder.add(StudentAction.LOGIN_STUDENT_ID);
        loginOrder.add(StudentAction.LOGOUT);
        System.out.println("Select a log in method: ");

        switch (multipleChoiceMenuPrompt(loginMap, loginOrder)) {
            case LOGIN_BANKID:
                System.out.println("Enter your person number: ");
                String loginPersonNumber = "";
                while(sc.hasNextLine() && (loginPersonNumber = sc.nextLine()).length() == 0) {
                    System.out.println("Try again! Enter your person number: ");
                }
                student = controller.loginStudentBankID(loginPersonNumber);
                System.out.println("Open your BankID app..");
                System.out.println("[BANK ID NOT REQUIRED IN DEVELOPER VIEW]");
                break;
            case LOGIN_EMAIL:
                System.out.println("Enter your email address: ");
                String loginEmailAddress = "";
                while(sc.hasNextLine() && (loginEmailAddress = sc.nextLine()).length() == 0) {
                    System.out.println("Try again! Enter your email address: ");
                }
                student = controller.loginStudentEmailAddress(loginEmailAddress);
                System.out.println("Enter your password: ");
                System.out.println("[PASSWORD NOT REQUIRED IN DEVELOPER VIEW]");
                break;
            case LOGIN_STUDENT_ID:
                System.out.println("Enter your student ID: ");
                String loginStudentID = "";
                while(sc.hasNextLine() && (loginStudentID = sc.nextLine()).length() == 0) {
                    System.out.println("Try again! Enter your student ID: ");
                }
                student = controller.loginStudentID(loginStudentID);
                System.out.println("Enter your password: ");
                System.out.println("[PASSWORD NOT REQUIRED IN DEVELOPER VIEW]");
                break;
            default:
                exitProgram();
        }

        return student;

    }

    private void studentGreeting(StudentDTO student) {
        System.out.println("~ Welcome " + student.getPerson().getFirstName() + " ~\n");
    }

    private void studentRentalSuccess() {
        System.out.println("Rental complete! Your instrument will be delivered to you within 5 hours.");
    }

    private void studentRentalTerminationSuccess() {
        System.out.println("Rental termination complete! Your instrument will be picked up within 5 hours.");
    }

    private StudentAction studentMenu() throws OperationFailedException {
        HashMap<StudentAction, String> menuItems = new HashMap<>();
        List<StudentAction> menuOrder = new ArrayList<>();
        int activeRentals = controller.numberOfActiveRentals();
        if (activeRentals < 2) {
            menuItems.put(StudentAction.INSTRUMENT_SEARCH_BY_TYPE, "Search for an instrument to rent.");
            menuOrder.add(StudentAction.INSTRUMENT_SEARCH_BY_TYPE);
        }
        if (activeRentals >= 1) {
            menuItems.put(StudentAction.INSTRUMENT_LIST_TERMINATE, "Terminate an ongoing rental.");
            menuOrder.add(StudentAction.INSTRUMENT_LIST_TERMINATE);
        }
        menuItems.put(StudentAction.LOGOUT, "Logout.");
        menuOrder.add(StudentAction.LOGOUT);
        System.out.println("Available options: ");
        return multipleChoiceMenuPrompt(menuItems, menuOrder);
    }

    private void studentListInstrumentsToTerminate() throws OperationFailedException {
        int chosenOption = 0;
        try {
            List<RentedInstrumentDTO> rentedInstrumentList = controller.listRentedInstruments();
            if (rentedInstrumentList.size() > 0) {
                MultipleChoiceListPrompt<RentedInstrumentDTO> multipleChoiceListPrompt =
                        new MultipleChoiceListPrompt<>(rentedInstrumentList);

                System.out.println("Select a rental of an instrument to terminate: ");
                chosenOption = multipleChoiceListPrompt.showPrompt();

                if (chosenOption != -1) {
                    System.out.println("Selected:");
                    System.out.println(rentedInstrumentList.get(chosenOption));

                    System.out.println("Do you wish to terminate rental of this instrument? [Y/N]");
                    if (confirmationPrompt()) {
                        try {
                            controller.terminateRental(rentedInstrumentList.get(chosenOption).getRentalID());
                        } catch (OperationFailedException e) {
                            StringBuilder errorMessage = new StringBuilder();
                            errorLogger.logException(e);
                            errorMessage.append("Unable to terminate rental.");
                            errorMessageHandler.showErrorMessage(errorMessage.toString());
                        }
                        studentRentalTerminationSuccess();
                    }

                }

            } else {
                System.out.println("You are currently not renting any instruments.");
            }
        } catch (OperationFailedException e) {
            StringBuilder errorMessage = new StringBuilder();
            errorLogger.logException(e);
            errorMessage.append("Unable to list rented instruments.");
            errorMessageHandler.showErrorMessage(errorMessage.toString());
        }
    }

    private void studentInstrumentSearchByType() throws OperationFailedException {
        int chosenOption = 0;

        while (chosenOption != -1) {
            System.out.println("Search for an instrument by type: ");
            String type = "";
            if (sc.hasNextLine() && (type = sc.nextLine()).length() == 0) {
                chosenOption = -1;
            } else {
                try {
                    List<InstrumentAvailableDTO> instrumentAvailableList = controller.listRentableInstrumentByType(type);

                    if (instrumentAvailableList.size() > 0) {
                        MultipleChoiceListPrompt<InstrumentAvailableDTO> multipleChoiceListPrompt =
                                new MultipleChoiceListPrompt<>(instrumentAvailableList);
                        chosenOption = multipleChoiceListPrompt.showPrompt();

                        if (chosenOption != -1) {
                            System.out.println("Selected:");
                            System.out.println(instrumentAvailableList.get(chosenOption));

                            System.out.println("Do you wish to rent this instrument? [Y/N]");
                            if (confirmationPrompt()) {
                                try {
                                    controller.rentInstrument(instrumentAvailableList.get(chosenOption)
                                            .getRentableInstrument().getInstrumentInStockID());
                                } catch (OperationFailedException e) {
                                    try {
                                        int activeRentals = controller.numberOfActiveRentals();
                                        if (activeRentals == 2) {
                                            System.out.println("You already have maximum number of allowed rentals.");
                                            chosenOption = -1;
                                        } else {
                                            StringBuilder errorMessage = new StringBuilder();
                                            errorLogger.logException(e);
                                            errorMessage.append("Unable to rent instruments.");
                                            errorMessageHandler.showErrorMessage(errorMessage.toString());
                                        }
                                    } catch (OperationFailedException eActiveRentals) {
                                        StringBuilder errorMessage = new StringBuilder();
                                        errorLogger.logException(eActiveRentals);
                                        errorMessage.append("Unable to rent instruments.");
                                        errorMessageHandler.showErrorMessage(errorMessage.toString());
                                    }
                                }
                                studentRentalSuccess();
                                chosenOption = -1;
                            }

                        }
                    } else {
                        System.out.println("Found nothing..");
                        System.out.println("Currently available instrument types are: ");
                        List<String> instrumentTypeList = controller.listRentableInstrumentType();
                        for (String instrumentType : instrumentTypeList) {
                            System.out.println(" - " + instrumentType);
                        }
                    }

                } catch (OperationFailedException e) {
                    StringBuilder errorMessage = new StringBuilder();
                    errorLogger.logException(e);
                    errorMessage.append("Unable to search for an instrument.");
                    errorMessageHandler.showErrorMessage(errorMessage.toString());
                }
            }
        }
    }

    /**
     * Developer view.
     */
    public void runDeveloperView() {
        System.setProperty("console.encoding", "UTF-8");
        System.out.println("##############################\n" +
                "#                            #\n" +
                "#   SOUNDGOOD MUSIC SCHOOL   #\n" +
                "#                            #\n" +
                "############[DeveloperView]###\n\n");

        StudentDTO student = null;
        while (student == null) {
            try {
                student = developerLoginPrompt();
            } catch (OperationFailedException e) {
                System.out.println("Failed to log in. Try again? [Y/N]");
                if (!confirmationPrompt()) {
                    exitProgram();
                }
            }
        }

        studentGreeting(student);

        StudentAction menuAction;
        try {
            while ((menuAction = studentMenu()) != StudentAction.LOGOUT) {
                switch (menuAction) {
                    case INSTRUMENT_LIST_TERMINATE:
                        studentListInstrumentsToTerminate();
                        break;
                    case INSTRUMENT_SEARCH_BY_TYPE:
                        studentInstrumentSearchByType();
                        break;
                }
            }
            exitProgram();
        } catch (OperationFailedException e) {
            StringBuilder errorMessage = new StringBuilder();
            errorLogger.logException(e);
            errorMessage.append("Unable to display menu.");
            errorMessageHandler.showErrorMessage(errorMessage.toString());
            exitProgram();
        }

    }

}
