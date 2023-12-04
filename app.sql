drop table if exists book;

CREATE TABLE Book (
    BookID SERIAL PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    PublishYear INTEGER,
    Publisher VARCHAR(255),
    Author VARCHAR(255) NOT NULL,
    Genre VARCHAR(255),
    Status VARCHAR(20) DEFAULT 'Available',
    Language VARCHAR(50),
    TotalCopies INTEGER DEFAULT 0,
    AvailableCopies INTEGER DEFAULT 0
);

CREATE TABLE Customer (
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Gender VARCHAR(10),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255),
    BooksBorrowed INTEGER 
);


INSERT INTO Book (Title, PublishYear, Publisher, Author, Genre, Language, TotalCopies, AvailableCopies)
VALUES
  ('To Kill a Mockingbird', 1960, 'Harper Collins', 'Harper Lee', 'Fiction', 'English', 3, 3),
  ('1984', 1949, 'Secker & Warburg', 'George Orwell', 'Dystopian', 'English', 3, 3),
  ('The Great Gatsby', 1925, 'Charles Scribner''s Sons', 'F. Scott Fitzgerald', 'Fiction', 'English', 3, 3),
  ('Pride and Prejudice', 1813, 'T. Egerton, Whitehall', 'Jane Austen', 'Romance', 'English', 3, 3),
  ('One Hundred Years of Solitude', 1967, 'Harper & Row', 'Gabriel Garcia Marquez', 'Magic Realism', 'Spanish', 3, 3),
  ('The Catcher in the Rye', 1951, 'Little, Brown and Company', 'J.D. Salinger', 'Fiction', 'English', 3, 3),
  ('To the Lighthouse', 1927, 'Hogarth Press', 'Virginia Woolf', 'Modernist', 'English', 3, 3),
  ('Brave New World', 1932, 'Chatto & Windus', 'Aldous Huxley', 'Dystopian', 'English', 3, 3),
  ('The Lord of the Rings', 1954, 'Allen & Unwin', 'J.R.R. Tolkien', 'Fantasy', 'English', 3, 3),
  ('The Hobbit', 1937, 'George Allen & Unwin', 'J.R.R. Tolkien', 'Fantasy', 'English', 3, 3),
  ('Moby-Dick', 1851, 'Harper & Brothers', 'Herman Melville', 'Adventure', 'English', 3, 3),
  ('The Odyssey', -800, 'Various', 'Homer', 'Epic Poetry', 'Ancient Greek', 3, 3),
  ('The Iliad', -800, 'Various', 'Homer', 'Epic Poetry', 'Ancient Greek', 3, 3),
  ('Crime and Punishment', 1866, 'The Russian Messenger', 'Fyodor Dostoevsky', 'Psychological Fiction', 'Russian', 3, 3),
  ('One Flew Over the Cuckoo''s Nest', 1962, 'Viking Press', 'Ken Kesey', 'Psychological Fiction', 'English', 3, 3),
  ('The Road', 2006, 'Alfred A. Knopf', 'Cormac McCarthy', 'Post-apocalyptic', 'English', 3, 3),
  ('The Grapes of Wrath', 1939, 'The Viking Press', 'John Steinbeck', 'Historical Fiction', 'English', 3, 3),
  ('The Brothers Karamazov', 1880, 'The Russian Messenger', 'Fyodor Dostoevsky', 'Philosophical Fiction', 'Russian', 3, 3),
  ('Frankenstein', 1818, 'Lackington, Hughes, Harding, Mavor, & Jones', 'Mary Shelley', 'Gothic', 'English', 3, 3),
  ('The Picture of Dorian Gray', 1890, 'Lippincott''s Monthly Magazine', 'Oscar Wilde', 'Gothic', 'English', 3, 3),
  ('Wuthering Heights', 1847, 'Thomas Cautley Newby', 'Emily Brontë', 'Gothic', 'English', 3, 3),
  ('Anna Karenina', 1877, 'The Russian Messenger', 'Leo Tolstoy', 'Realist Fiction', 'Russian', 3, 3),
  ('The Count of Monte Cristo', 1844, 'Le Journal des Débats', 'Alexandre Dumas', 'Adventure', 'French', 3, 3),
  ('Les Misérables', 1862, 'Various', 'Victor Hugo', 'Historical Fiction', 'French', 3, 3),
  ('The Hunger Games', 2008, 'Scholastic Corporation', 'Suzanne Collins', 'Dystopian', 'English', 3, 3),
  ('The Fault in Our Stars', 2012, 'Dutton Books', 'John Green', 'Young Adult', 'English', 3, 3),
  ('A Game of Thrones', 1996, 'Bantam Spectra', 'George R.R. Martin', 'Fantasy', 'English', 3, 3),
  ('The Girl on the Train', 2015, 'Riverhead Books', 'Paula Hawkins', 'Thriller', 'English', 3, 3),
  ('The Martian', 2011, 'Crown Publishing Group', 'Andy Weir', 'Science Fiction', 'English', 3, 3),
  ('Gone Girl', 2012, 'Crown Publishing Group', 'Gillian Flynn', 'Mystery', 'English', 3, 3),
  ('Educated', 2018, 'Random House', 'Tara Westover', 'Memoir', 'English', 3, 3),
  ('Circe', 2018, 'Little, Brown and Company', 'Madeline Miller', 'Historical Fiction', 'English', 3, 3),
  ('The Silent Patient', 2019, 'Celadon Books', 'Alex Michaelides', 'Thriller', 'English', 3, 3),
  ('Where the Crawdads Sing', 2018, 'G.P. Putnam''s Sons', 'Delia Owens', 'Mystery', 'English', 3, 3),
  ('Becoming', 2018, 'Crown Publishing Group', 'Michelle Obama', 'Memoir', 'English', 3, 3),
  ('The Testaments', 2019, 'Nan A. Talese', 'Margaret Atwood', 'Dystopian', 'English', 3, 3),
  ('A Promised Land', 2020, 'Crown Publishing Group', 'Barack Obama', 'Memoir', 'English', 3, 3),
  ('The Night Circus', 2011, 'Doubleday', 'Erin Morgenstern', 'Fantasy', 'English', 3, 3),
  ('The Goldfinch', 2013, 'Little, Brown and Company', 'Donna Tartt', 'Drama', 'English', 3, 3),
  ('All the Light We Cannot See', 2014, 'Scribner', 'Anthony Doerr', 'Historical Fiction', 'English', 3, 3),
  ('Ready Player One', 2011, 'Crown Publishing Group', 'Ernest Cline', 'Science Fiction', 'English', 3, 3),
  ('The Alchemist', 1988, 'Harper & Row', 'Paulo Coelho', 'Adventure', 'Portuguese', 3, 3),
  ('The Book Thief', 2005, 'Dutton Books', 'Markus Zusak', 'Historical Fiction', 'English', 3, 3),
  ('Station Eleven', 2014, 'Knopf', 'Emily St. John Mandel', 'Science Fiction', 'English', 3, 3),
  ('Laskar Pelangi', 2005, 'Bentang Pustaka', 'Andrea Hirata', 'Drama', 'Indonesian', 3, 3),
  ('Perahu Kertas', 2009, 'Bentang Pustaka', 'Dee Lestari', 'Romance', 'Indonesian', 3, 3),
  ('Pulang', 2015, 'Gramedia Pustaka Utama', 'Leila S. Chudori', 'Historical Fiction', 'Indonesian', 3, 3)
  ;

INSERT INTO Customer (FirstName, LastName, Gender, PhoneNumber, Address, BooksBorrowed)
VALUES
  ('John', 'Doe', 'Male', '123-456-7890', '123 Main St', 0),
  ('Jane', 'Smith', 'Female', '987-654-3210', '456 Oak St', 0),
  ('Chris', 'Johnson', 'Male', '555-123-4567', '789 Pine St', 0),
  ('Emily', 'Davis', 'Female', '111-222-3333', '101 Elm St', 0),
  ('Michael', 'Brown', 'Male', '999-888-7777', '202 Maple St', 0);


