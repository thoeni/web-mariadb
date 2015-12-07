USE DBWEB;

CREATE TABLE `page`
(
  id VARCHAR(100) NOT NULL PRIMARY KEY,
  title VARCHAR(128),
  summary VARCHAR(500),
  content TEXT
);

CREATE TABLE `contact`
(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  type VARCHAR(10) NOT NULL,
  content VARCHAR(100) NOT NULL
);

CREATE TABLE `testimonial`
(
  name VARCHAR(50) PRIMARY KEY NOT NULL,
  text TEXT,
  date VARCHAR(10)
);

CREATE TABLE `project`
(
  name VARCHAR(50) PRIMARY KEY NOT NULL,
  text TEXT,
  tech TEXT
);

INSERT INTO `page` (id, title, summary, content)
    VALUES ('index', 'This is the title', 'This is the summary', 'This is the content');

INSERT INTO `contact` (id, type, content)
    VALUES (1, 'EMAIL', 'antonio.troina@me.com'),
           (2, 'MOBILE', '+44(0)7428434808');

INSERT INTO `testimonial` (name, text, date)
VALUES ('soi', 'I haven\'t had the opportunity to work with Antonio since we finished bootcamp, but I find that he\'s a very detailed and elaborate teacher. There has been quite a few situations where I have encountered some deep technical difficulties. Recently, I encountered a problem with setting up my continuous integration pipeline with Docker containers, but none of the documentations or other online materials failed to point out the root cause. Antonio had quickly identified where the root of the problem was, explained it to me and gave me a number of very helpful solutions. For me, if I can\'t find the answer in the documentation, community forums or Stack Overflow then there\'s Antonio.', '04-12-2015'),
  ('lorian', 'Antonio is one of those rare gems that you may come across a couple of times during your working career. He goes above and beyond what is needed in order to complete the work. He is extremely professional and puts his heart and soul into any task, regardless how big or small it is. He is a professional that wants to get the work completed in the most efficient manner. This was demonstrated and appreciated with the work done on the ESB project for Travis Perkins by the whole team and especially our Product Owner. Everyone who works with him will learn something from him and he has the patience to work with anyone. I have no doubt he will be very successful in his working career due to his attitude of constantly wanting to learn new things on his own as well as from others too.', '04-12-2015'),
  ('jo', 'Antonio is one of the most valuable members of the dev community in ANDigital - and the walking embodiment of "Delight, Wonder, Share". While working with him on TP ESB PoC, I was very impressed with not just what he did, but how he did it.
Antonio\'s technical skills are in no dispute. He has good technical base knowledge and is quick to pick up new concepts and skills.He has an infectious enthusiasm for trying new tools and technologies. This is backed up with strong understanding of both scrum and development best-practice concepts and methods.
He has a great ability to see the bigger picture in development work, which means he applies his knowledge in sensible and pragmatic ways, and is always helpful in creating and maintaining effective working environments and practices.
Antonio\'s ability to connect with other people is the thing that really multiplies his value. He is always willing to take time to share his knowledge, and bring others along on his journey. He never works as a "lone ranger" developer and takes care of the overall balance and dynamic of the team, unlocking potential from all his teammates.
I look forward to seeing Antonio rise through the levels rapidly and have a very successful career at ANDigital.', '04-12-2015'),
  ('kate','Antonio is a confident developer who has a passion for experimenting and finding new ways to do things. I always feel like I have a lot to learn from him, which I have been doing while working together on Pulse. His passion for technology reflects on his attitude to work, which is proactive, productive, and professional.','07-12-2015'),
  ('munveer','Antonio is a very hardworking individual who is knowledgable in both back-end and front-end technologies, I have experienced this whilst working with Antonio on the front-end of Pulse. He is approachable and always happy to help those who are less experienced like myself.','07-12-2015'),
  ('rachelle','Antonio contributes to the team and is always finding better ways of writing lines of code to make the work readable and efficient. He is happy to help when help is needed even when he has work of his own or is not entirely familiar with the language for example, PHP. Antonio definitely knows his technology and Is able to contribute towards very technical decisions. Overall, it has been great working with Antonio so far.','07-12-2015');

INSERT INTO `project` (name, text, tech)
    VALUES ('TravisPerkins','At Travis Perkins I had the opportunity to expand my knowledge around Middleware systems and their integration within an Enterprise company. Despite being \'just\' a PoC project, it was quite successful also from the very own words of our Product Owner. I worked in a small team that presented its own challenges when it came to technical as well as interpersonal aspects. I supported the Product Owner advising him around the most relevant features of the products, and presenting him potential issues. I contributed with innovative ideas to the success of the project, along with other squad members working as a team.','WSO2 Products (Enterprise Service Bus, Business Activity Monitor, Message Broker), Wiremock as Java testing library, Amazon Web Services, Jenkins, Docker'),
      ('Pulse','As a developer for Pulse internal project I had the opportunity to work with a junior medium size team (that for the most diverse reasons is now smaller than it was) mainly on the backend (APIs) of the system, helping the team whenever front-end support was needed. I worked closely with Mahesh on the design of the solution, discussing with him about the implementation choices and bringing together the team on this journey. As one of the most senior devs in this team I\'m also having the opportunity of coaching other members of my team and I\'m trying to be a good mentor for them. Given the positive feedbacks I\'ve received I would say that this approach is working pretty well, and I\'m enjoying this position, despite I\'m also willing to work closer to more senior developers like Mahesh and Paul.','Java 8, Spring (spring-boot, spring-data, spring-test), DBUnit, Rest APIs, AngularJS, Javascript');