databaseChangeLog = {

    changeSet(author: "yukung (generated)", id: "1432993490872-1") {
        createSequence(sequenceName: "hibernate_sequence")
    }

    changeSet(author: "yukung (generated)", id: "1432993490872-2") {
        createTable(tableName: "book") {
            column(name: "id", type: "BIGINT") {
                constraints(nullable: "false")
            }

            column(name: "version", type: "BIGINT") {
                constraints(nullable: "false")
            }

            column(name: "author", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "isbn", type: "VARCHAR(13)") {
                constraints(nullable: "false")
            }

            column(name: "number_of_pages", type: "INT4") {
                constraints(nullable: "false")
            }

            column(name: "price", type: "INT4") {
                constraints(nullable: "false")
            }

            column(name: "publication_year", type: "VARCHAR(4)") {
                constraints(nullable: "false")
            }

            column(name: "publisher", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "title", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "yukung (generated)", id: "1432993490872-3") {
        addPrimaryKey(columnNames: "id", constraintName: "book_pkey", tableName: "book")
    }

    changeSet(author: "yukung (generated)", id: "1432993490872-4") {
        addUniqueConstraint(columnNames: "isbn", constraintName: "uk_ehpdfjpu1jm3hijhj4mm0hx9h", deferrable: "false", disabled: "false", initiallyDeferred: "false", tableName: "book")
    }
}
