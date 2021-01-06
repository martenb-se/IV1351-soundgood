/*
 * Author: Mårten Björkman
 * Course: IV1351 (HT201)
 * Program: TIDAB
 * Email: marteb@kth.se
 *
 * - [ Description ] -----------------------------
 *
 * This file is heavily influenced by the file Leif Lindbäck created:
 * https://github.com/KTH-IV1351/jdbc-bank/blob/master/src/main/java/se/kth/iv1351/bankjdbc/integration/BankDBException.java
 *
 * The MIT License (MIT)
 * Copyright (c) 2020 Leif Lindbäck
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction,including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so,subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 */
package se.martenb.iv1351.soundgood.integration;

/**
 * Thrown when a call to the Soundgood Music School database fails.
 */
public class SchoolDBException extends Exception {
    /**
     * A new instance with he specified reason.
     * @param reason The reason for the exception.
     */
    public SchoolDBException(String reason) {
        super(reason);
    }

    /**
     * A new instance with he specified reason along with the root cause.
     * @param reason The reason for the exception.
     * @param rootCause The cause for the exception.
     */
    public SchoolDBException(String reason, Throwable rootCause) {
        super(reason, rootCause);
    }
}
