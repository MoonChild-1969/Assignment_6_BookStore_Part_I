PRAGMA foreign_keys = ON;

INSERT INTO category (categoryId, categoryName, categoryImage) VALUES
(1, 'Biographies', 'biographies-category.jpg'),
(2, 'Learn to Play', 'learn-to-play-category.jpg'),
(3, 'Music Theory', 'music-theory-category.jpg'),
(4, 'Scores and Collections', 'scores-and-collections-category.jpg');

INSERT INTO book (bookId, categoryId, title, author, isbn, price, image, readNow) VALUES
(1, 1, 'Beethoven: Anguish and Triumph', 'Jan Swafford', '9780618054749', 24.99, 'beethoven.gif', 1),
(2, 1, 'Lady Gaga: Applause', 'Annie Zaleski', '9781786750525', 19.99, 'lady-gaga.jpg', 0),
(3, 1, 'Duke: A Life of Duke Ellington', 'Terry Teachout', '9781592407491', 21.99, 'ellington.jpg', 0),
(4, 1, 'Clapton: The Autobiography', 'Eric Clapton', '9780385518512', 18.99, 'clapton.jpg', 0),
(5, 2, 'Hal Leonard Guitar Method Book 1 - Second Edition', 'Will Schmid and Greg Koch', '9780793533923', 14.99, 'guitar.jpg', 1),
(6, 2, 'Alfred''s Basic Adult Piano Course Lesson Book 1', 'Willard A. Palmer', '9780882846163', 16.99, 'piano.jpg', 1),
(7, 3, 'Music Theory for Dummies', 'Michael Pilhofer and Holly Day', '9781119575528', 22.99, 'theory.jpg', 1),
(8, 4, 'The Real Book: Volume I (C Edition)', 'Hal Leonard Corp.', '9780634060380', 39.99, 'scores.jpg', 0),
(9, 2, 'Guitar Aerobics', 'Troy Nelson', '9781423414353', 24.99, 'guitar-aerobics.jpg', 1),
(10, 3, 'The AB Guide to Music Theory, Part I', 'Eric Taylor', '9781854724465', 14.99, 'ab-guide-theory.jpg', 1),
(11, 3, 'Music Theory: A Practical Guide for All Musicians', 'Barrett Tagliarino', '9781423401773', 17.99, 'practical-music-theory.jpg', 0),
(12, 4, 'The Beatles Complete Chord Songbook', 'The Beatles', '9780634022296', 39.99, 'beatles-chords.jpg', 0),
(13, 4, 'The Beatles Sheet Music Collection', 'The Beatles', '9781495096037', 49.99, 'beatles-sheet-music.jpg', 0);
