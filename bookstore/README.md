# Assignment 6 - Music Bookstore Database and Python CLI

## Description

This music bookstore sells musician biographies, instrument instruction books,
music theory textbooks, and scores and song collections. It uses SQLite to store
the catalog and a Python command-line interface to browse and manage books.
The sample catalog contains 4 categories and 13 books: 4 biographies and 3 books
in each of the other categories. Prices are sample retail prices in US dollars.
Images are stored as filenames only; image files are not required for this part.

## Files

- `createTables.sql` - creates the category and book tables with keys and constraints.
- `insertRows.sql` - inserts the four categories and thirteen sample books.
- `bookstore.db` - ready-to-use SQLite database containing the sample catalog.
- `bookstore_cli.py` - interactive Python program with parameterized SQL queries.
- `README.md` - description and setup and usage instructions.

## Requirements

Python 3 with its standard-library `sqlite3` module. No third-party packages are
needed. The SQLite command-line shell is optional.

## Create or reset the database

Keep all five files in the same folder and open a terminal in that folder.
The included database is ready to use. To rebuild it with the sample data, run:

```bash
sqlite3 bookstore.db < createTables.sql
sqlite3 bookstore.db < insertRows.sql
```

If the `sqlite3` shell is not installed, use Python instead:

```bash
python3 - <<'PY'
import sqlite3
from pathlib import Path

with sqlite3.connect('bookstore.db') as connection:
    connection.executescript(Path('createTables.sql').read_text(encoding='utf-8'))
    connection.executescript(Path('insertRows.sql').read_text(encoding='utf-8'))
PY
```

Rebuilding removes the current tables and their data, then restores the sample
catalog. Run both scripts in the order shown. Do not load `insertRows.sql` twice
without resetting the tables.

## Run the Python CLI

```bash
python3 bookstore_cli.py
```

Press Enter at the welcome screen, choose a menu option, and follow the prompts.
Press Enter after viewing a result to return to the menu.

| Option | Operation |
| --- | --- |
| 1 | View all categories |
| 2 | View all books |
| 3 | View books in a category using a JOIN |
| 4 | Search books by a title keyword |
| 5 | Add a new book |
| 6 | Update a book price using its book ID |
| 7 | Delete a book using its book ID |
| 8 | Quit |
| 9 | Search books by an author keyword (additional feature) |

For example, choose option 3 and enter `2` to see instrument instruction books.
Choose option 9 and enter `Beatles` to find the two Beatles songbooks.

When adding a book, use an existing category ID, a unique ISBN, a nonnegative
finite price, and `0` or `1` for `readNow`. Title, author, ISBN, and image filename
cannot be empty. Invalid numeric input, invalid categories, duplicate ISBNs,
and invalid prices produce a message and return to the menu.

## Implementation notes

- Each database connection enables foreign-key enforcement.
- User input is passed separately to SQL using `?` placeholders.
- Title and author searches use `LIKE` with a parameterized keyword.
- Successful add, update, and delete operations are saved immediately.
- The program opens the database beside `bookstore_cli.py`, even when launched
  from another folder.

## Sources for the added sample books

- Guitar Aerobics: https://www.halleonard.com/product/695946/guitar-aerobics
- The AB Guide to Music Theory, Part I: https://shop.abrsm.org/collections/music-theory-initial-copy/products/ab-guide-pt-1-9781854724465
- Music Theory: A Practical Guide for All Musicians: https://www.halleonard.com/product/311270/music-theorymusic-theory
- The Beatles Complete Chord Songbook: https://www.halleonard.com/product/306349/the-beatles-complete-chord-songbook
- The Beatles Sheet Music Collection: https://www.halleonard.com/feature/12300073/the-beatles
