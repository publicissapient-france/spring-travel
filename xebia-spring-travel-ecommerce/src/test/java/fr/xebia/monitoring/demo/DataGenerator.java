/*
 * Copyright 2008-2010 Xebia and the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package fr.xebia.monitoring.demo;

import java.util.Random;

import org.springframework.security.authentication.encoding.Md5PasswordEncoder;

public class DataGenerator {

    public static void main(String[] args) {
        Md5PasswordEncoder md5PasswordEncoder = new Md5PasswordEncoder();
        Random random = new Random();

        for (int i = 101; i <= 1000; i++) {
            String username = "user-" + i;
            String password = md5PasswordEncoder.encodePassword("password-" + i, "");
            String firstName = "first-name-" + i;
            String lastName = "last-name-" + i;
            String email = firstName + "." + lastName + "@springtravel.com";
            System.out.println("insert into users (username, password, enabled) values ('" + username + "', '" + password + "', true);");
            System.out.println("insert into authorities (username, authority) values ('" + username + "', 'ROLE_USER');");
            System.out.println("insert into Customer (username, first, last, email) values ('" + username + "', '" + firstName + "', '"
                    + lastName + "', '" + email + "');");
        }
        System.out.println();
        System.out.println();
        System.out.println();
        System.out.println();

        for (int i = 101; i <= 1000; i++) {
            String username = "user-" + i;
            String password = "password-" + i;
            String firstName = "first-name-" + i;
            String lastName = "last-name-" + i;
            String creditCardNumber = "" + Math.abs(random.nextInt());
            System.out.println(username + "," + password + "," + firstName + " " + lastName + "," + creditCardNumber + ",03,2012");
        }

    }
}
