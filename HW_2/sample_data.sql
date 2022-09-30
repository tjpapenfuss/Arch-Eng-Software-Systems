/* 
 * Script to insert sample data into the mysql database created
 * in the book_business.sql script.
 * Author: Tanner Papenfuss
 * Course: 1.125 Arch and Eng Software Systems
*/



-- Creating new publishers
insert into publishers values(1, "The OG Publishers", null, null);
insert into publishers values(2, "Yo Mammas House Publishing", null, null);
insert into publishers values(3, "The X factor Publishing", null, null);
insert into publishers values(4, "What is a publish, Publishing house", null, null);

insert into books values ("9780435910105", "Opening Spaces: An Anthology of Contemporary African Women's Writing", 186, 4);
insert into books values ("9781906523374", "The Caine Prize for African Writing 2010: 11th Annual Collection", 208, 1);
insert into books values ("9780394721170", "African Folktales", 111, 4);
insert into books values ("9780813190761", "Unchained Voices: An Anthology of Black Authors in the English-Speaking World of the Eighteenth Century", 416, 2);
insert into books values ("9781558615007", "Women Writing Africa: West Africa and the Sahel", 560, 3);
insert into books values ("9781906523244", "10 Years of the Caine Prize for African Writing: Plus Coetzee, Gordimer, Achebe, Okri", 200, 4);
insert into books values ("9781592211517", "Introduction to African Oral Literature and Performance", 146, 1);
insert into books values ("9780803211025", "Violence in Francophone African and Caribbean Women's Literature", 236, 4);
insert into books values ("9780253211101", "Oral Epics from Africa", 200, 1);
insert into books values ("9780912469096", "African Fundamentalism: A Literary and Cultural Anthology of Garvey's Harlem Renaissance", 363, 3);
insert into books values ("9780140100044", "Land Apart: A South African Reader", 256, 1);
insert into books values ("9781558615342", "Women Writing Africa: The Eastern Region", 340, 2);
insert into books values ("9780795701849", "Nobody Ever Said AIDS: Poems and Stories from Southern Africa", 192, 2);
insert into books values ("9780471380603", "Step into a World: A Global Anthology of the New Black Literature", 496, 1);
insert into books values ("9780814781432", "An Anthology of Interracial Literature: Black-White Contacts in the Old World and the New", 100, 2);
insert into books values ("9781906523145", "The Caine Prize 2009: The Caine Prize for African Writing 10th Annual Collection", 214, 4);
insert into books values ("9780844212029", "Traditions in World Literature: Literature of Africa, Softcover Student Edition", 320, 4);
insert into books values ("9781869140014", "Love Child", 124, 2);
insert into books values ("9781770091450", "Seventh Street Alchemy 2004: A Selection of Works from the Caine Prize for African Writing", 228, 1);
insert into books values ("9781558614062", "Women Writing Africa: The Southern Region: Volume 1", 560, 4);
insert into books values ("9780739105627", "Of Suffocated Hearts and Tortured Souls: Seeking Subjecthood through Madness in Francophone Women's", 218, 3);
insert into books values ("9780325070254", "Less Than One and Double: A Feminist Reading of African Women's Writing", 384, 3);
insert into books values ("9781588264916", "The Rienner Anthology of African Literature", 900, 3);
insert into books values ("9781594606472", "Oral and Written Expressions of African Cultures", 264, 2);
insert into books values ("9781904456735", "Jambula Tree and other stories: The Caine Prize for African Writing 8th Annual Collection", 214, 3);
insert into books values ("9780795701061", "Up the Down Escalator", 120, 1);
insert into books values ("9780869809181", "Basali!: Stories by and about Women in Lesotho", 136, 2);
insert into books values ("9781563976988", "How God Fix Jonah", 160, 2);

insert into genres values (1, "Horror");
insert into genres values (2, "Suspense");
insert into genres values (3, "Adventure");
insert into genres values (4, "Romance");
insert into genres values (5, "NonFiction");

insert into bookGenre values ("9780140100044", 2);
insert into bookGenre values ("9780253211101", 1);
insert into bookGenre values ("9780471380603", 4);
insert into bookGenre values ("9780795701061", 3);
insert into bookGenre values ("9781592211517", 5);
insert into bookGenre values ("9781770091450", 3);
insert into bookGenre values ("9781906523374", 2);
insert into bookGenre values ("9780795701849", 5);
insert into bookGenre values ("9780813190761", 1);
insert into bookGenre values ("9780814781432", 5);
insert into bookGenre values ("9780869809181", 3);
insert into bookGenre values ("9781558615342", 2);
insert into bookGenre values ("9781594606472", 2);
insert into bookGenre values ("9781869140014", 1);
insert into bookGenre values ("9780325070254", 5);
insert into bookGenre values ("9780739105627", 5);
insert into bookGenre values ("9780912469096", 5);
insert into bookGenre values ("9781558615007", 1);
insert into bookGenre values ("9781588264916", 1);
insert into bookGenre values ("9781904456735", 3);
insert into bookGenre values ("9780394721170", 4);
insert into bookGenre values ("9780435910105", 4);
insert into bookGenre values ("9780803211025", 2);
insert into bookGenre values ("9780844212029", 1);
insert into bookGenre values ("9781558614062", 4);
insert into bookGenre values ("9781906523145", 5);
insert into bookGenre values ("9781906523244", 5);

insert into authors values (1, "Tanner", "Papenfuss", 1234567890);
insert into authors values (2, "Jimmy", "Johns", 2345678901);
insert into authors values (3, "Papa", "Johns", 3456789012);
insert into authors values (4, "Dom", "Inos", 4567890123);
insert into authors values (5, "Blaze", "Fired", 5678901234);
insert into authors values (6, "Pizza", "Hut", 6789012345);
insert into authors values (7, "Mountain", "Mikes", 7890123456);

insert into bookAuthor values ("9780140100044", 1);
insert into bookAuthor values ("9780253211101", 2);
insert into bookAuthor values ("9780471380603", 3);
insert into bookAuthor values ("9780795701061", 4);
insert into bookAuthor values ("9781592211517", 5);
insert into bookAuthor values ("9781770091450", 6);
insert into bookAuthor values ("9781906523374", 7);
insert into bookAuthor values ("9780795701849", 1);
insert into bookAuthor values ("9780813190761", 2);
insert into bookAuthor values ("9780814781432", 3);
insert into bookAuthor values ("9780869809181", 4);
insert into bookAuthor values ("9781558615342", 5);
insert into bookAuthor values ("9781594606472", 6);
insert into bookAuthor values ("9781869140014", 1);
insert into bookAuthor values ("9780325070254", 2);
insert into bookAuthor values ("9780739105627", 3);
insert into bookAuthor values ("9780912469096", 4);
insert into bookAuthor values ("9781558615007", 5);
insert into bookAuthor values ("9781588264916", 1);
insert into bookAuthor values ("9781904456735", 2);
insert into bookAuthor values ("9780394721170", 3);
insert into bookAuthor values ("9780435910105", 4);
insert into bookAuthor values ("9780803211025", 1);
insert into bookAuthor values ("9780844212029", 2);
insert into bookAuthor values ("9781558614062", 3);
insert into bookAuthor values ("9781906523145", 1);
insert into bookAuthor values ("9781906523244", 2);

insert into customers values (1, "Billys", "Sub Shop", 0987654321);
insert into customers values (2, "Mike and", "Pattys", 9876543210);
insert into customers values (3, "Bennetts", "Sandwich Shop", 8765432109);
insert into customers values (4, "2nd St", "Cafe", 7654321098);
insert into customers values (5, "Archies", "NY Deli", 6543210987);
insert into customers values (6, "Mamalehs", "Deli", 5432109876);

insert into orders values (1, '1999-09-30', 3);
insert into orders values (2, '1999-09-30', 4);
insert into orders values (3, '1999-09-30', 4);
insert into orders values (4, '1999-09-30', 4);
insert into orders values (5, '1999-09-30', 4);
insert into orders values (6, '1999-09-30',4);
insert into orders values (7, '1999-09-30', 4);
insert into orders values (8, '1999-09-30',3);
insert into orders values (9, '1999-09-30', 2);
insert into orders values (10, '1999-09-30', 1);
insert into orders values (11, '1999-09-30', 3);
insert into orders values (12, '1999-09-30', 3);
insert into orders values (13, '1999-09-30', 2);
insert into orders values (14, '1999-09-30', 3);
insert into orders values (15, '1999-09-30', 3);

insert into customerOrders values (6,1);
insert into customerOrders values (5,2);
insert into customerOrders values (4,3);
insert into customerOrders values (3,4);
insert into customerOrders values (2,5);
insert into customerOrders values (1,6);
insert into customerOrders values (6,7);
insert into customerOrders values (5,8);
insert into customerOrders values (4,9);
insert into customerOrders values (3,10);
insert into customerOrders values (2,11);
insert into customerOrders values (6,12);
insert into customerOrders values (5,13);
insert into customerOrders values (4,14);
insert into customerOrders values (3,15);

insert into bookOrder values ("9780140100044", 1);
insert into bookOrder values ("9780140100044", 2);
insert into bookOrder values ("9780140100044", 3);
insert into bookOrder values ("9780140100044", 4);
insert into bookOrder values ("9780140100044", 5);

insert into bookOrder values ("9780253211101", 3);
insert into bookOrder values ("9780253211101", 4);
insert into bookOrder values ("9780253211101", 5);
insert into bookOrder values ("9780253211101", 6);
insert into bookOrder values ("9780253211101", 7);

insert into bookOrder values ("9780471380603", 7);
insert into bookOrder values ("9780471380603", 8);
insert into bookOrder values ("9780471380603", 9);
insert into bookOrder values ("9780471380603", 10);
insert into bookOrder values ("9780471380603", 11);

insert into bookOrder values ("9780795701061", 2);
insert into bookOrder values ("9780795701061", 3);
insert into bookOrder values ("9780795701061", 4);
insert into bookOrder values ("9780795701061", 5);
insert into bookOrder values ("9780795701061", 6);

insert into bookOrder values ("9781592211517", 11);
insert into bookOrder values ("9781592211517", 12);
insert into bookOrder values ("9781592211517", 13);
insert into bookOrder values ("9781592211517", 14);

insert into bookOrder values ("9781770091450", 12);
insert into bookOrder values ("9781770091450", 13);
insert into bookOrder values ("9781770091450", 14);
insert into bookOrder values ("9781770091450", 15);

insert into bookOrder values ("9781906523374", 15);

insert into bookOrder values ("9780795701849", 1);
insert into bookOrder values ("9780795701849", 2);
insert into bookOrder values ("9780795701849", 3);
insert into bookOrder values ("9780795701849", 4);

insert into bookOrder values ("9780813190761", 5);
insert into bookOrder values ("9780813190761", 6);
insert into bookOrder values ("9780813190761", 7);
insert into bookOrder values ("9780813190761", 8);

insert into bookOrder values ("9780814781432", 9);
insert into bookOrder values ("9780814781432", 11);
insert into bookOrder values ("9780814781432", 12);

insert into bookOrder values ("9780869809181", 1);
insert into bookOrder values ("9780869809181", 2);
insert into bookOrder values ("9780869809181", 14);
insert into bookOrder values ("9780869809181", 15);

insert into bookOrder values ("9781558615342", 6);
insert into bookOrder values ("9781558615342", 7);
insert into bookOrder values ("9781558615342", 8);

-- These below books were not purchased.
-- insert into bookOrder values ("9781594606472", 6);
-- insert into bookOrder values ("9781869140014", 1);
-- insert into bookOrder values ("9780325070254", 2);
-- insert into bookOrder values ("9780739105627", 3);
-- insert into bookOrder values ("9780912469096", 4);
-- insert into bookOrder values ("9781558615007", 5);
-- insert into bookOrder values ("9781588264916", 1);
-- insert into bookOrder values ("9781904456735", 2);
-- insert into bookOrder values ("9780394721170", 3);
-- insert into bookOrder values ("9780435910105", 4);
-- insert into bookOrder values ("9780803211025", 1);
-- insert into bookOrder values ("9780844212029", 2);
-- insert into bookOrder values ("9781558614062", 3);
-- insert into bookOrder values ("9781906523145", 1);
-- insert into bookOrder values ("9781906523244", 2);

insert into editors values (1, "Goliath", "1 Mansion Way, MA 02141", 6758493021);
insert into editors values (2, "David", "1 Overcome Ave, MS 12345", 5678439201);
insert into editors values (3, "Brownies", "1 Baby Size Ln, VT 21345", 4765893021);

insert into bookEditor values ("9780140100044", 1);
insert into bookEditor values ("9780253211101", 2);
insert into bookEditor values ("9780471380603", 3);
insert into bookEditor values ("9780795701061", 1);
insert into bookEditor values ("9781592211517", 2);
insert into bookEditor values ("9781770091450", 1);
insert into bookEditor values ("9781906523374", 1);
insert into bookEditor values ("9780795701849", 2);
insert into bookEditor values ("9780813190761", 3);
insert into bookEditor values ("9780814781432", 1);
insert into bookEditor values ("9780869809181", 2);
insert into bookEditor values ("9781558615342", 1);
insert into bookEditor values ("9781594606472", 1);
insert into bookEditor values ("9781869140014", 2);
insert into bookEditor values ("9780325070254", 3);
insert into bookEditor values ("9780739105627", 1);
insert into bookEditor values ("9780912469096", 2);
insert into bookEditor values ("9781558615007", 1);
insert into bookEditor values ("9781588264916", 1);
insert into bookEditor values ("9781904456735", 2);
insert into bookEditor values ("9780394721170", 3);
insert into bookEditor values ("9780435910105", 1);
insert into bookEditor values ("9780803211025", 2);
insert into bookEditor values ("9780844212029", 1);
insert into bookEditor values ("9781558614062", 1);
insert into bookEditor values ("9781906523145", 2);
insert into bookEditor values ("9781906523244", 1);

