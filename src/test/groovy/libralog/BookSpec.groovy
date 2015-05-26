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

import grails.test.mixin.TestFor
import spock.lang.Specification

import java.time.LocalDate
import java.time.ZoneId

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Book)
class BookSpec extends Specification {

    Book book

    def setup() {
        book = new Book()
        book.with {
            isbn = '9784532319557'
            title = 'How Google Works (ハウ・グーグル・ワークス) ―私たちの働き方とマネジメント'
            author = 'エリック・シュミット  (著), ジョナサン・ローゼンバーグ  (著), アラン・イーグル  (著), ラリー・ペイジ (その他), 土方 奈美 (翻訳)'
            publisher = '日本経済新聞出版社'
            publicationDate = Date.from(LocalDate.of(2014, 10, 9).atStartOfDay().atZone(ZoneId.systemDefault()).toInstant())
            numberOfPages = 376
            price = 1944
        }
    }

    def cleanup() {
    }

    def "'isbn' should be a 13-digit"() {
        when: 'isbn size is too short'
        book.isbn = '123456789012'
        then:
        !book.validate()

        when: 'isbn size is too large'
        book.isbn = '12345678901234'
        then:
        !book.validate()

        when: 'isbn character is invalid'
        book.isbn = '123456789-123'
        then:
        !book.validate()

        when: 'isbn is blank'
        book.isbn = ''
        then:
        !book.validate()

        when: 'isbn size is valid'
        book.isbn = '1234567890123'
        then:
        book.validate()
    }

    def "'number of pages' should be positive number"() {
        when:
        book.numberOfPages = -1
        then:
        !book.validate()

        when:
        book.numberOfPages = 0
        then:
        book.validate()
    }

    def "'price' should be positive number"() {
        when:
        book.price = -1
        then:
        !book.validate()

        when:
        book.price = 0
        then:
        book.validate()
    }
}
