# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Chapters
chapter_list = [
	"Introduction",
	"1-4",
	"5-8",
	"9-12"
]

chapter_list.each do |title|
	Chapter.create(:title => title)
end

#Lessons
lessons_list = [
	[1, "The Cathedral and the Bazaar", "Before the initial development of Linux it was unthinkable to most people that big software projects such as operating systems were developed as open-source projects.
		Eric Steven Raymond imagined the development of these big projects as if they were cathedrals, carefully crafted by a select group of people working in isolation.
		He saw Linus Torvalds’s style of development as a great babbling bazaar of different agendas and approaches out of which a coherent and stable system could seemingly emerge only by a succession of miracle.

		The Cathedral and the Bazaar is the story of one of Eric Steven Raymonds’s projects from mid-1996 in which he tried out the Bazaar-styled open-source approach.
		This project turned out to be a great success and in his story he shares experiences, tips, perspectives and some understanding of how Linux became a fountain of good software." ],
	[2, "Every good work of software starts by scratching a developer’s personal itch", "It seems so obvious, though often programmers pick software closest to their needs. There is a saying that goes like this: ”Necessity is the mother of invention”. So when a developer wants or needs something, writing new - or rather rewriting/reusing as stated by the next point - software, has great potential for being a great product. This may explain why the average quality of software originated in the Linux community is so high." ],
	[2, "Good programmers know what to write. Great ones know what to rewrite (and reuse).", "So when there’s a personal itch writing your own software has great potential. Though, great programmers are often lazy and will try to write as few code as possible. That’s why great programmers know what to rewrite and reuse. As Eric puts it ”it's almost always easier to start from a good partial solution than from nothing at all”." ],
	[2, "``Plan to throw one away; you will, anyhow.'' (Fred Brooks, The Mythical Man-Month, Chapter 11)", "Most of the time, when first working on a problem, you don’t really understand it. Always be ready to throw your solution away, because the second time you may know enough to do it right." ],
	[2, "If you have the right attitude, interesting problems will find you.", "Although this is not very important to the lesson, it is an interesting point." ],
	[3, "When you lose interest in a program, your last duty to it is to hand it off to a competent successor", "It kind of defies the meaning of open-source projects to let them go to waste if you lose interest in them. A great thing about the open-source community is that there are always developers interested in maintaining good pieces of software." ],
	[3, "Treating your users as co-developers is your least-hassle route to rapid code improvement and effective debugging", "When your project is open source your users could be programmers just like you. This means they have the knowledge to diagnose problems, suggest fixes and improve the code. This way you can have a better program in less time." ],
	[3, "Release early. Release often. And listen to your customers", "Early and frequent releases are a critical part of the Linux development model. Linus was keeping his hacker/users constantly stimulated and rewarded—stimulated by the prospect of having an ego-satisfying piece of the action, rewarded by the sight of constant (even daily) improvement in their work. Linus was directly aiming to maximize the number of person-hours thrown at debugging and development, even at the possible cost of instability in the code and user-base burnout if any serious bug proved intractable." ],
	[3, "Given a large enough beta-tester and co-developer base, almost every problem will be characterized quickly and the fix obvious to someone", "In open-source development it’s not uncommon that one person finds a problem and have someone else really understand the problem so they can fix it. Sociologists discovered that the averaged opinion of a mass of equally expert observers is much more reliable than the opinion of one of the experts. This is called the Delphi effect. Linus has shows that this rule also applies to a project at the complexity level of an OS kernel." ],
	[4, "If you treat your beta-testers as if they're your most valuable resource, they will respond by becoming your most valuable resource", "Eric had decided to test his theory about what Linus Torvalds had done right on his mail program Popclient. In order to this he did a couple of things:<br />
			- Release early and often, at least once every ten days and sometimes once a day<br />
			- Growing his beta list<br />
			- Sent announcement to his entire beta list at every release encouraging people to participate<br />
			- Listening to beta-testers, asking their opinion about design decisions and stroking them whenever they sent in patches and feedback<br />
		<br />
		This approach worked right from the beginning. Eric got a lot of very detailed bug reports, patches, intelligent feature requests and thoughtful critisism.<br />" ],
	[4, "The next best thing to having good ideas is recognizing good ideas from your users. Sometimes the latter is better", "Eric’s mail program had a real turning point when one of his users turned in a bit of scratch code for forwarding mail to the client machine SMTP port. This idea made Eric decide to get out of the MDA (Local Delivery Agent) business and be a pure MTA (Mail Transport Agent) program. This idea came from a user and this is the single biggest payoff Eric had from conciously trying to emulate Linus’s methods." ],
	[4, "Often, the most striking and innovative solutions come from realizing that your concept of the problem was wrong", "Eric had been trying to solve the wrong problem by making Popclient/Fetchmail a combined MDA/MTA with all kinds of funky delivery modes. “When you hit a wall in development—when you find yourself hard put to think past the next patch—it's often time to ask not whether you've got the right answer, but whether you're asking the right question. Perhaps the problem needs to be reframed.”" ],
	[4, "Perfection (in design) is achieved not when there is nothing more to add, but rather when there is nothing more to take away", "Don't hesitate to throw away superannuated features when you can do it without loss of effectiveness. When your code is getting beter and simpler you know it’s right." ],
]

lessons_list.each do |chapter_id, title, description|
	Lesson.create(title: title, description: description, chapter_id: chapter_id)
end

#Questions
questions_list = [
	[2, "What are the preconditions of the product of a succesful Bazaar-styled open-source project according to Eric?"],
	[4, "Which skills should a project leader of a Bazaar-styled open-source project have?"],
	[7, "What are the advantages of Bazaar-styled open-source projects over Cathedral-styled projects?"]
]

questions_list.each do |answer, question|
	Question.create(question: question, answer: answer, correct: "empty")
end

#Answers
answers_list = [
	[1, "a) An almost finished product"],
	[1, "b) A product which gives a plausible promiss of a good product even if it's buggy, incomplete and poorly documented"],
	[1, "c) A concept of an idea"],
	[2, "a) Good people skills"],
	[2, "b) Great design and programming skills"],
	[2, "c) Ability to work well in teams"],
	[3, "a) More minds make for a better product and faster debugging"],
	[3, "b) Less money spend on employees"],
	[3, "c) More exposure for the final product"],
]

answers_list.each do |question_id, answer|
	Answer.create(answer: answer, question_id: question_id)
end
