/*
 * Copyright 2015 the original author or authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package libralog

/**
 * Represent the book.
 *
 * @author yukung
 */
class Book {
    String isbn
    String title
    String author
    String publisher
    String publicationYear
    Integer numberOfPages
    Integer price
    static constraints = {
        isbn size: 13..13, blank: false, unique: true, matches: /[0-9]+/
        publicationYear size: 4..4, blank: false, unique: false, matches: /[0-9]+/
        numberOfPages min: 0
        price min: 0
    }
}
