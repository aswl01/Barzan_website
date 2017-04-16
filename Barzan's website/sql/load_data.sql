USE Barzan;
ALTER TABLE Projects AUTO_INCREMENT = 1;
ALTER TABLE Publications AUTO_INCREMENT = 1;
ALTER TABLE News AUTO_INCREMENT = 1;
INSERT INTO User VALUES('admin', 'Barzan', 'Mozafari', 'sha512$9540cd26a0e141859ffee9de8d4573af$c10fa16db1b69befe159e255d16dbefd948d6b42b7def74828392bf014239fb493f396efc827a5cb1f4922ba71cfa75fedd8d7d2fe9fd8de50df3c4e078b3a2f');
INSERT INTO Projects VALUES(null, 'Designing a Predictable Database', 'A Journey to Bring Back Performance Predictability to Databases',
	'Four decades of research on database systems has mostly focused on improving average raw performance. This competition for faster performance has, understandably, neglected predictability of our database management systems. However, 
	as database systems have become more complex, their erratic and unpredictable performance has become a major challenge facing database users and administrators alike. With the increasing reliance of mission-critical business applications
	 on their databases, maintaining high levels of database performance (i.e., service level guarantees) is now more important than ever. Cloud users find it challenging to provision and tune their database instances, due to the highly 
	 non-linear and unpredictable nature of today\'s databases. Even for deployed databases, performance tuning has become somewhat of a black art, rendering qualified database administrators a scare resource. In this project, we restore the 
	 missing virtue of predictability in the design of database systems. First, we quantify the major sources of uncertainty in a database in a principled manner. Then, by rethinking the traditional design of a database system, we architect a 
	 new generation of databases that treat predictability as a first class-citizen in their various stages of query processing, from physical design to memory management and query scheduling. Moreover, to accommodate existing database systems 
	 (which are not predictable by design), we provide effective tools and methodologies for predicting their performance more accurately. Building a predictable database in a bottom-up fashion and in a principled manner, offers great insight 
	 into improving existing database products and can instigate a radical shift in the way that future databases are designed and implemented.', NULL, 'd288cfed4a0677729ba7168128bff587.png', 'current');
INSERT INTO Projects VALUES(null, 'Conflux', 'A Low-Latency Data Platform for Computational Physics', 'This project develops an instrument, called ConFlux, hosted at the University of Michigan (UM), specifically designed to enable High 
	Performance Computing (HPC) clusters to communicate seamlessly and at interactive speeds with data-intensive operations. The project establishes a hardware and software ecosystem to enable large scale data-driven modeling of multiscale 
	physical systems. ConFlux will produce advances in predictive modeling in several disciplines including turbulent flows, materials physics, cosmology, climate science and cardiovascular flow modeling. A wide range of phenomena exhibit emergent 
	behavior that makes modeling very challenging. In this project, physics-constrained data-driven modeling approaches are pursued to account for the underlying complexity. These techniques require HPC applications (running on external clusters) to 
	interact with large data sets at run time. ConFlux provides low latency communications for in- and out-of-core data, cross-platform storage, as well as high throughput interconnects and massive memory allocations. The file-system and scheduler 
	natively handle extreme-scale machine learning and traditional HPC modules in a tightly integrated workflow---rather than in segregated operations--leading to significantly lower latencies, fewer algorithmic barriers and less data movement. 
	The funding for this project is $3.46M, out of which NSF and University of Michigan have each generously provided $2.4M and $1M, respectively.', NULL, NULL, 'current');
INSERT INTO Projects VALUES(null, 'CliffGuard', 'A Principled Framework for Applying Robust Optimization Theory to Database Systems', 'A fundamental problem in database systems is choosing the best physical design, i.e., a small set of auxiliary 
	structures that enable the fastest execution of future queries. Modern databases come with designer tools that create a number of indices or materialized views, but they find designs that are sub-optimal and remarkably brittle. This is because 
	future workload is often not known a priori and these tools optimize for past workloads in hopes that future queries and data will be similar. In practice, these input parameters are often noisy or missing.

CliffGuard is a practical framework that creates robust designs that are immune to parameter uncertainties as much as desired. CliffGuard is the first attempt at applying robust optimization theory in Operations Research 
to building a practical framework for solving one of the most fundamental problems in databases, namely finding the best physical design.', 'http://cliffguard.org', '9cd3d524adcc383edb869423ada65919.gif', 'current');
INSERT INTO Projects VALUES(null, 'DBSeer', 'Performance Analysis, Automatic Diagnosis, and Intelligent Physical Design for Database Systems', 'The pressing need for achieving and maintaining high performance in database systems has made database 
	administration one of the most stressful jobs in information technology. DBAs are now responsible for an array of demanding tasks; they need to (i) provision and tune their database according to their application requirements, (ii) constantly 
	monitor their database for any performance failures or slowdowns, (iii) diagnose the root cause of the performance problem in an accurate and timely fashion, and (iv) take prompt actions that can restore acceptable database performance. However, 
	much of the research in the past years has focused on improving the raw performance of the database systems, rather than improving their manageability. DBSeer is a workload intelligence framework that exploits advanced machine learning and causality 
	techniques to aid DBAs in their various responsibilities. DBSeer analyzes large volumes of statistics and telemetry data collected from various log files to provide the DBA with a suite of rich functionalities including performance prediction, performance 
	diagno sis, bottleneck explanation, workload insight, optimal admission control, and what-if analysis.', 'http://dbseer.org/', '5b3a83a656e2a57b88e7921088959f79.png', 'current');
INSERT INTO Projects VALUES(null, 'Crowdsourcing Big Data', NULL, 'Crowdsourcing has become a very popular means of performing tasks that require human intelligence. But what do you do when your dataset is too "big"? Imagine having to deal with web-scale data: 
	there are hundreds of millions of daily tweets and images. Even if labeling each label costs a penny, your company will soon go bankrupt! We have started a new project here at MIT that aims to scale crowdsourcing to Big Data.', NULL, 'e73a6e0b81a79941e7dd4b08b5e0a053.gif', 'current');
INSERT INTO Projects VALUES(null, 'Approximate Query Processing', 'Querying Petabytes of Data in a Blink Time!', 'Today\'s web is predominantly data-driven. People increasingly depend on enormous amounts of data (spanning terabytes or even petabytes in size) to make intelligent business 
	and personal decisions. Often the time it takes to make these decisions is critical. However, unfortunately, quickly analyzing large volumes of data poses significant challenges. For instance, scanning 1TB of data may take minutes, even when the data is spread across hundreds of 
	machines and read in parallel. BlinkDB is a massively parallel, sampling-based approximate query engine for running interactive queries on large volumes of data. The key observation in BlinkDB is that one can make perfect decisions in the absence of perfect answers. For example, 
	reliably detecting a malfunctioning server in a distributed collection of system logs does not require knowing every request the server processed. Based on this insight, BlinkDB allows one to tradeoff between query accuracy and response time, enabling interactive queries over massive 
	data by running queries on data samples. To achieve this, BlinkDB uses two key ideas that differentiate it from previous sampling-based database systems: (1) an optimization framework to build a set of multi-dimensional, multi-resolution samples, and (2) a strategy that uses a set of 
	small samples to dynamically estimate a query\'s error and response time at run-time. We have built a BlinkDB prototype, and validate its effectiveness using well-known benchmarks and a real-world workload derived from Conviva. Our initial set of experiments show that BlinkDB can execute 
	a range of queries over a real-world query trace on up to 17 TB of data and 100 nodes in 2 seconds, with an error of 2-10%.', 'http://blinkdb.org/', '66cbefa2bb3cc4ac349d801c08169107.png', 'current');
INSERT INTO Projects VALUES(NULL, 'High-Performance Complex Event Processing', NULL, 'Complex Event Processing (CEP) is a broad term, referring to any application that involves searching for complex patterns among raw events to infer higher-level concepts. Examples include high-frequency trading 
	(a certain correlation in stock prices that triggers a purchase), intrusion detection (a series of network activities that indicate an attack), inventory management (moving patterns using RFID or GPS readings), click stream analysis (a sequence of clicks that trigger an ad), and electronic 
	health systems (a combination of sensor readings raising an alert). CEP applications have created a fast-growing market, with an annual growth rate of 30% (see Celent report). This growing market has led database vendors to add new constructs (called MATCH_RECOGNIZE) to the SQL language that 
	allow for expressing sequential patterns among the rows in a table.

Seeking richer abstractions for supporting CEP applications, we have introduced constructs based on Kleene-closure expressions and showed that they are significantly more powerful than those proposed by database vendors (which are provably incapable of expressing many important CEP queries). We 
have designed the first two database query languages that used nested word automata (NWA) as their underlying computational model: K*SQL with a relational interface, and XSeq with an XML interface. NWAs are recent advances in the field of automata theory that generalize the notion of regular 
languages to capture data that has both sequential and hierarchical structures. Examples of such data are XML, JSON files, RNA proteins, and traces of procedural programs.

K*SQL solves the long-standing problem of providing a unified query engine for both relational and hierarchical data. Similarly, despite 15 years of previous research where using tree automata for XML optimization was the status quo, XSeq translates XML queries into NWAs (which are then 
optimized using my algorithms) and outperformes the state-of-the-art XML engines by several orders of magnitude. XSeq received the SIGMOD\'s best paper award in 2012.', NULL, 'acbfcdbb8b02f4732f879ce884b496eb.jpg', 'past');
INSERT INTO Projects VALUES(NULL, 'SMM: Stream Mill Miner', 'A System for Mining Data Streams', 'Stream Mill Miner (SMM) is an extensible online data stream mining workbench. SMM is built upon a powerful data stream management system, namely StreamMill. Stream Mill is efficiently supports 
	continuous queries, which are critical in many application areas, including sensors networks, traffic monitoring and intrusion detection. Stream Mill achieves a much broader range of usability and effectiveness in its application domain via minimal but powerful extensions to SQL. SMM 
	utilizes these extensions to build an extensible online mining workbench. The main features of the SMM system are as follows:

Extensibility that allows advanced users/analysts to integrate new mining algorithms, by implementing them declaratively. This feature is supported through Stream Mill UDAs, which are either defined natively in SQL or externally in a programming language such as C/C++. Stream Mill UDAs 
provide tremendous expressive power to the users, both theoretically and practically. Therefore, in SMM these UDAs implement complex mining algorithms. Thus, many new mining algorithms can be integrated into SMM using these features. Naive users can invoke both built-in and user defined
 mining algorithms with a unified syntax.
 
A rich library of mining algorithms (a) that are fast and light enough to mine data streams, and (b) that dovetail with the constructs and mechanisms (windows, slides, etc.) is provided using the UDAs discussed above.
 
Specification of workflows, which allows the advanced users/analysts to specify the complete end-to-end mining process. These workflows are also invoked using the same unified syntax, as discussed earlier. Workflows allow the analysts to develop complex mining processes, which are 
then simply invoked by naive users.', NULL, 'e7da48a2cbb1d3322fb68c61c63223e7.png', 'past');
INSERT INTO Projects VALUES(NULL, 'User Modeling', NULL, 'The overall goal of the BlogoCenter project was to develop innovative technologies to build a system that will (1) continuously monitor, collect, and store personal Weblogs (or blogs) at a central location, (2) discover hidden 
	structures and trends automatically from the blogs, and (3) make them easily accessible to general users. By making the new information on the blogs easy to discover and access, this project aimed at helping blogs realize their full potential for societal change as the "grassroots
	 media."', NULL, '74d24069edf9a21b2858369c28640345.jpg','past');

INSERT INTO People VALUES('Barzan Mozafari', 'http://web.eecs.umich.edu/~mozafari/');
INSERT INTO People VALUES('Grant Schoenebeck', 'http://web.eecs.umich.edu/~schoeneb/');
INSERT INTO People VALUES('Jiamin Huang', NULL);
INSERT INTO People VALUES('Thomas Wenisch', 'http://web.eecs.umich.edu/~twenisch/');
INSERT INTO People VALUES('Karthik Duraisamy', 'http://www.engin.umich.edu/college/about/people/profiles/a-to-e/karthik-duraisamy');
INSERT INTO People VALUES('Krishna Garikipati', 'https://sites.google.com/a/umich.edu/krishna/');
INSERT INTO People VALUES('Dong Young Yoon', NULL);
INSERT INTO People VALUES('Eugene Zhen Ye Goh', NULL);
INSERT INTO People VALUES('Carlo Curino', NULL);
INSERT INTO People VALUES('Samuel Madden', 'http://db.csail.mit.edu/madden/');
INSERT INTO People VALUES('Yun Chan Han', NULL);
INSERT INTO People VALUES('Samuel Brodkey', NULL);
INSERT INTO People VALUES('Aurojit Panda', NULL);
INSERT INTO People VALUES('Henry Milner', NULL);
INSERT INTO People VALUES('Ion Stoica','https://people.eecs.berkeley.edu/~istoica/');
INSERT INTO People VALUES('Sameer Agarwal', 'https://sameeragarwal.github.io/');
INSERT INTO People VALUES('Kai Zeng', NULL);
INSERT INTO People VALUES('Carlo Zaniolo', 'http://web.cs.ucla.edu/~zaniolo/');
INSERT INTO People VALUES('Hetal Thakkar', NULL);

INSERT INTO Author VALUES('Barzan Mozafari', 1);
INSERT INTO Author VALUES('Barzan Mozafari', 2);
INSERT INTO Author VALUES('Barzan Mozafari', 3);
INSERT INTO Author VALUES('Barzan Mozafari', 4);
INSERT INTO Author VALUES('Barzan Mozafari', 5);
INSERT INTO Author VALUES('Barzan Mozafari', 6);
INSERT INTO Author VALUES('Barzan Mozafari', 7);
INSERT INTO Author VALUES('Barzan Mozafari', 8);
INSERT INTO Author VALUES('Grant Schoenebeck', 1);
INSERT INTO Author VALUES('Jiamin Huang', 1);
INSERT INTO Author VALUES('Thomas Wenisch', 1);
INSERT INTO Author VALUES('Karthik Duraisamy', 2);
INSERT INTO Author VALUES('Krishna Garikipati', 2);
INSERT INTO Author VALUES('Dong Young Yoon', 3);
INSERT INTO Author VALUES('Eugene Zhen Ye Goh', 3);
INSERT INTO Author VALUES('Dong Young Yoon', 4);
INSERT INTO Author VALUES('Eugene Zhen Ye Goh', 4);
INSERT INTO Author VALUES('Carlo Curino', 4);
INSERT INTO Author VALUES('Samuel Madden', 4);
INSERT INTO Author VALUES('Yun Chan Han', 5);
INSERT INTO Author VALUES('Samuel Brodkey', 5);
INSERT INTO Author VALUES('Aurojit Panda', 6);
INSERT INTO Author VALUES('Ion Stoica', 6);
INSERT INTO Author VALUES('Sameer Agarwal', 6);
INSERT INTO Author VALUES('Kai Zeng', 7);
INSERT INTO Author VALUES('Carlo Zaniolo', 7);
INSERT INTO Author VALUES('Carlo Zaniolo', 8);
INSERT INTO Author VALUES('Hetal Thakkar', 8);

INSERT INTO Publications VALUES(NULL, 'Statistical Analysis of Latency Through Semantic Profiling.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/eurosys_2017.pdf',
	1, 'In Proceedings of Proceedings of the European Conference on Computer Systems (EuroSys), Belgrade, Serbia, April 23-26, 2017', 'Jiamin Huang, Barzan Mozafari and Thomas F. Wenisch.');
INSERT INTO Publications VALUES(NULL, 'A Top-Down Approach to Achieving Performance Predictability in Database Systems.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/sigmod_2017_predictability.pdf',
	1, 'In Proceedings of Proceedings of the ACM SIGMOD 2017 Conference, Chicago, IL, United States, May 14-19, 2017', 'Jiamin Huang, Barzan Mozafari, Grant Schoenebeck, Thomas F. Wenisch.');
INSERT INTO Publications VALUES(NULL, 'Identifying the Major Sources of Variance in Transaction Latencies: Towards More Predictable Databases.', 'https://arxiv.org/abs/1602.01871',
	1, 'In Technical Report, March, 2016', 'Jiamin Huang, Barzan Mozafari, Grant Schoenebeck, and Thomas Wenisch.');
INSERT INTO Publications VALUES(NULL, 'DBSeer: Pain-free Database Administration through Workload Intelligence.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/vldb_2015_demo.pdf',
	1, 'In Proceedings of the 41st International Conference on Very Large Data Bases (PVLDB), Kohala Coast, Hawai\'i, U.S.A., September 01-04, 2015', 'Dong Young Yoon, Barzan Mozafari, and Douglas P. Brown.');
INSERT INTO Publications VALUES(NULL, 'CliffGuard: A Principled Framework for Finding Robust Database Designs.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/sigmod_2015.pdf',
	1, 'In Proceedings of the ACM SIGMOD 2015 Conference, Melbourne, VIC, Australia, May 31 - June 04, 2015', 'Barzan Mozafari, Eugene Zhen Ye Goh, and Dong Young Yoon.');
INSERT INTO Publications VALUES(NULL, 'A New Collision Resistant Hash Function based on Optimum Dimensionality Reduction using Walsh-Hadamard Transform.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/icit_2006.pdf',
	2, 'In Proceedings of 9th International Conference on Information Technology ICIT 2006, Bhubaneswar, India, December 18-21, 2006', 'Barzan Mozafari and Mohammad Hasan Savoji.');
INSERT INTO Publications VALUES(NULL, 'CliffGuard: A Principled Framework for Finding Robust Database Designs.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/sigmod_2015.pdf',
	3, 'In Proceedings of the ACM SIGMOD 2015 Conference, Melbourne, VIC, Australia, May 31 - June 04, 2015', 'Barzan Mozafari, Eugene Zhen Ye Goh, and Dong Young Yoon.');
INSERT INTO Publications VALUES(NULL, 'DBSherlock: A Performance Diagnostic Tool for Transactional Databases.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/sigmod_2016.pdf',
	4, 'In Proceedings of the ACM SIGMOD 2016 Conference, San Francisco, CA, USA, June 26 - July 01, 2016', 'Dong Young Yoon, Ning Niu, and Barzan Mozafari.');
INSERT INTO Publications VALUES(NULL, 'DBSeer: Pain-free Database Administration through Workload Intelligence.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/vldb_2015_demo.pdf',
	4, 'In Proceedings of the 41st International Conference on Very Large Data Bases (PVLDB), Kohala Coast, Hawai\'i, U.S.A., September 01-04, 2015', 'Dong Young Yoon, Barzan Mozafari, and Douglas P. Brown.');
INSERT INTO Publications VALUES(NULL, 'CliffGuard: A Principled Framework for Finding Robust Database Designs.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/sigmod_2015.pdf',
	4, 'In Proceedings of the ACM SIGMOD 2015 Conference, Melbourne, VIC, Australia, May 31 - June 04, 2015', 'Barzan Mozafari, Eugene Zhen Ye Goh, and Dong Young Yoon.');
INSERT INTO Publications VALUES(NULL, 'DBSeer: Resource and Performance Prediction for Building a Next Generation Database Cloud.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/sigmod_2013.pdf',
	4, 'In Proceedings of the ACM SIGMOD 2013 Conference, New York, NY, U.S.A, June 22-27, 2013', 'Barzan Mozafari, Carlo Curino, Alekh Jindal, and Samuel Madden.');
INSERT INTO Publications VALUES(NULL, 'DBSeer: Resource and Performance Prediction for Building a Next Generation Database Cloud.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/142698827458516.pdf',
	4, 'In Proceedings of the Conference on Innovative Data Systems Research (CIDR), Asilomar, California, U.S.A., January 06-09, 2013', 'Barzan Mozafari, Carlo Curino, and Samuel Madden.');
INSERT INTO Publications VALUES(NULL, 'Scaling Up Crowd-Sourcing to Very Large Datasets: A Case for Active Learning.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/vldb_2015_crowd.pdf',
	5, 'the 41st International Conference on Very Large Data Bases (PVLDB), Kohala Coast, Hawai\'i, U.S.A., September 01-04, 2015', 'Barzan Mozafari, Purna Sarkar, Michael Franklin, Michael Jordan, and Samuel Madden.');
INSERT INTO Publications VALUES(NULL, 'Active Learning for Crowd-Sourced Databases.', 'https://arxiv.org/abs/1209.3686', 5 ,'In Technical Report, 2013', 'Barzan Mozafari, Purnamrita Sarkar, Michael J. Franklin, Michael I. Jordan, and Samuel Madden.');
INSERT INTO Publications VALUES(NULL, 'Approximate Query Engines: Commercial Challenges and Research Opportunities.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/sigmod_2017_keynote.pdf', 
	6, 'In Proceedings of Proceedings of the ACM SIGMOD 2017 Conference, Chicago, IL, United States, May 14-19, 2017', 'Barzan Mozafari.');
INSERT INTO Publications VALUES(NULL,'Database Learning: Toward a Database that Becomes Smarter Every Time.','http://web.eecs.umich.edu/~mozafari/php/data/uploads/sigmod_2017_dbl.pdf',
	6, 'In Proceedings of Proceedings of the ACM SIGMOD 2017 Conference, Chaminade, CA, United States, May 14-19, 2017','Yongjoo Park, Ahmad Shahab Tajik, Michael Cafarella, Barzan Mozafari' );
INSERT INTO Publications VALUES(NULL,'SnappyData: A Unified Cluster for Streaming, Transactions and Interactice Analytics.','http://web.eecs.umich.edu/~mozafari/php/data/uploads/cidr_2017.pdf',
	6, 'In Proceedings of Conference on Innovative Data Systems Research (CIDR), Chaminade, CA, United States, January 08-11, 2017','Barzan Mozafari, Jags Ramnarayan, Sudhir Menon, Yogesh Mahajan, Soubhik Chakraborty, Hemant Bhanawat, Kishor Bachhav.');
INSERT INTO Publications VALUES(NULL,'SnappyData: A Hybrid Transactional Analytical Store Built On Spark.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/sigmod_2016_demo.pdf',
	6, 'In Proceedings of the ACM SIGMOD 2016 Conference, San Francisco, CA, USA, June 26 - July 01, 2016', 'Jags Ramnarayan, Barzan Mozafari, Sumedh Wale, Sudhir Menon, Neeraj Kumar, Hemant Bhanawat, Soubhik Chakraborty, Yogesh Mahajan, Rishitesh Mishra, Kishor Bachhav.');
INSERT INTO Publications VALUES(NULL,'Database Learning: Toward a Database that Becomes Smarter Every Time.','http://web.eecs.umich.edu/~mozafari/php/data/uploads/dbl_techreport.pdf',
	6, 'Technical Report, April, 2016', 'Yongjoo Park, Ahmad Shahab Tajik, Michael Cafarella, and Barzan Mozafari.');
INSERT INTO Publications VALUES(NULL,'SnappyData: Streaming, Transactions, and Interactive Analytics in a Unified Engine.','http://web.eecs.umich.edu/~mozafari/php/data/uploads/snappy.pdf',
	6, 'Technical Report, March, 2016', 'Jags Ramnarayan, Barzan Mozafari, Sudhir Menon, Sumedh Wale, Neeraj Kumar, Hemant Bhanawat, Soubhik Chakraborty, Yogesh Mahajan, Rishitesh Mishra, and Kishor Bachhav.');
INSERT INTO Publications VALUES(NULL,'Neighbor-Sensitive Hashing','http://web.eecs.umich.edu/~mozafari/php/data/uploads/vldb_2016_nsh.pdf',
	6, 'In Proceedings of the 41st International Conference on Very Large Data Bases (PVLDB), New Delhi, India, September 05-09, 2016', 'Yongjoo Park, Michael Cafarella, Barzan Mozafari');
INSERT INTO Publications VALUES(NULL,'Visualization-Aware Sampling for Very Large Databases.','http://web.eecs.umich.edu/~mozafari/php/data/uploads/icde_2016.pdf',
	6, 'In Proceedings of 32nd IEEE International Conference on Data Engineering (ICDE), Helsinki, Finland, May 16-20, 2016','Yongjoo Park, Michael Cafarella, Barzan Mozafari.');
INSERT INTO Publications VALUES(NULL,'A Handbook for Building an Approximate Query Engine.','http://web.eecs.umich.edu/~mozafari/php/data/uploads/approx_chapter.pdf',
	6, 'IEEE Data Engineering Bulletin, October, 2015','Barzan Mozafari, and Ning Niu.');
INSERT INTO Publications VALUES(NULL, 'Verdict: A System for Stochastic Query Planning.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/cidr_2015.pdf',
	6, 'In Proceedings of the Conference on Innovative Data Systems Research (CIDR), Asilomar, California, U.S.A., January, 2015', 'Barzan Mozafari.');
INSERT INTO Publications VALUES(NULL, 'The Analytical Bootstrap: a New Method for Fast Error Estimation in Approximate Query Processing.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/sigmod_2014_abm.pdf',
	6, 'In Proceedings of the ACM SIGMOD 2014 Conference, Snowbird, UT, U.S.A., June, 2014', 'Kai Zeng, Shi Gao, Barzan Mozafari and Carlo Zaniolo.');
INSERT INTO Publications VALUES(NULL, 'Knowing When You\'re Wrong: Building Fast and Reliable Approximate Query Processing Systems.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/sigmod_2014_diagnosis.pdf', 
	6, 'In Proceedings of the ACM SIGMOD 2014 Conference, Snowbird, UT, U.S.A., June, 2014', 'Sameer Agarwal, Henry Milner, Ariel Kleiner, Ameet Talwalkar, Michael Jordan, Samuel Madden, Barzan Mozafari and Ion Stoica.');
INSERT INTO Publications VALUES(NULL, 'ABS: a System for Scalable Approximate Queries with Accuracy Guarantees.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/sigmod_2014_demo.pdf',
	6, 'In Proceedings of the ACM SIGMOD 2014 Conference, Snowbird, UT, U.S.A., June, 2014', 'Kai Zeng, Shi Gao, Jiaqi Gu, Barzan Mozafari and Carlo Zaniolo.');
INSERT INTO Publications VALUES(NULL, 'BlinkDB: Queries with Bounded Errors and Bounded Response Times on Very Large Data.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/eurosys_2013.pdf',
	6, 'In Proceedings of the European Conference on Computer Systems (EuroSys), Prague, Czech Republic, April 14-17, 2013', 'Sameer Agarwal, Barzan Mozafari, Aurojit Panda, Henry Milner, Samuel Madden, and Ion Stoica.');
INSERT INTO Publications VALUES(NULL, 'Blink and It\'s Done: Interactive Queries on Very Large Data.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/vldb_2012.pdf', 
	6, 'In Proceedings of the 38th International Conference on Very Large Data Bases (PVLDB), Istanbul, Turkey, August 27-31, 2012', 'Sameer Agarwal, Aurojit Panda, Barzan Mozafari, Anand P. Iyer, Samuel Madden, and Ion Stoica.');
INSERT INTO Publications VALUES(NULL, 'High-Performance Complex Event Processing over Hierarchical Data.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/tods_2013.pdf',
	7, 'In ACM TODS\'s Special Issue on, December, 2013', 'Barzan Mozafari, Kai Zeng, Loris D\'Antoni, and Carlo Zaniolo.');
INSERT INTO Publications VALUES(NULL, 'Complex Pattern Matching in Complex Structures: the XSeq Approach.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/icde_2013.pdf', 
	7, 'In Proceedings of the 29th International Conference on Data Engineering (ICDE), Brisbane, Australia, April 08-11, 2013', 'Kai Zeng, Mohan Yang, Barzan Mozafari, and Carlo Zaniolo.');
INSERT INTO Publications VALUES(NULL, 'High-Performance Complex Event Processing over XML Streams.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/sigmod_2012.pdf',
	7, 'In Proceedings of the ACM SIGMOD 2012 Conference, Scottsdale, Arizona, U.S.A., May 20-24, 2012', 'Barzan Mozafari, Kai Zeng, and Carlo Zaniolo.');
INSERT INTO Publications VALUES(NULL, 'From Regular Expressions to Nested Words: Unifying Languages and Query Execution for Relational and XML Sequences.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/vldb_2010.pdf',
	7, 'In Proceedings of the 36th International Conference on Very Large Data Bases (PVLDB), Singapore, Singapore, September 12-17, 2010','Barzan Mozafari, Kai Zeng, and Carlo Zaniolo.');
INSERT INTO Publications VALUES(NULL, 'K*SQL: A Unifying Engine for Sequence Patterns and XML.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/sigmod_2010.pdf',
	7, 'In Proceedings of the ACM SIGMOD 2010 Conference, Indianapolis, Indiana, U.S.A., June 06-11, 2010', 'Barzan Mozafari, Kai Zeng, and Carlo Zaniolo.');
INSERT INTO Publications VALUES(NULL, 'SMM: a Data Stream Management System for Knowledge Discovery', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/icde_2011.pdf',
	8, 'In Proceedings of the 27th International Conference on Data Engineering (ICDE), Hannover, Germany, April 11-16, 2011', 'Hetal Thakkar, Nikolay Laptev, Hamid Mousavi, Barzan Mozafari, Vincenzo Russo, and Carlo Zaniolo.');
INSERT INTO Publications VALUES(NULL, 'Optimal Load Shedding with Aggregates and Mining Queries.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/icde_2010.pdf', 
	8, 'In Proceedings of the 26th International Conference on Data Engineering (ICDE), Long Beach, California, U.S.A., March 01-06, 2010', 'Barzan Mozafari and Carlo Zaniolo.');
INSERT INTO Publications VALUES(NULL, 'Continuous Post-Mining of Association Rules in a Data Stream Management System.', 'https://www.amazon.com/Post-mining-Association-Rules-Techniques-Extraction/dp/1605664049/',
	8, 'In Post-Mining of Association Rules: Techniques for Effective Knowledge Extraction, edited by Yanchang Zhao, Chengqi Zhang, and Longbing Cao, Information Science Reference,', 'Hetal Thakkar, Barzan Mozafari and Carlo Zaniolo.');
INSERT INTO Publications VALUES(NULL, 'Verifying and Mining Frequent Patterns from Large Windows over Data Streams.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/icde_2008.pdf',
	8, 'In Proceedings of the 24th International Conference on Data Engineering (ICDE), Cancun, Mexico, April 07-12, 2008', 'Barzan Mozafari, Hetal Thakkar, and Carlo Zaniolo.');
INSERT INTO Publications VALUES(NULL, 'A Data Stream Mining System.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/icdm_2008.pdf', 
	8, 'In Proceedings of the International Conference on Data Mining ICDM 2008, Pisa, Italy, December 15-19, 2008', 'Hetal Thakkar, Barzan Mozafari and Carlo Zaniolo.');
INSERT INTO Publications VALUES(NULL, 'Publishing Naive Bayesian Classifiers: Privacy without Accuracy Loss.', 'http://web.eecs.umich.edu/~mozafari/php/data/uploads/vldb_2009.pdf',
	9, 'In Proceedings of the 35th International Conference on Very Large Data Bases (PVLDB), Lyon, France, August 24-28, 2009', 'Barzan Mozafari and Carlo Zaniolo.');
INSERT INTO Publications VALUES(NULL, 'On the Evolution of Wikipedia.', 'http://web.eecs.umich.edu/~mozafari/papers/icwsm_2007.pdf', 
	9, 'In Proceedings of the International Conference on Weblogs and Social Media (ICWSM), Boulder, Colorado, U.S.A., March 26-28, 2007', 'Rodrigo B. Almeida, Barzan Mozafari, and Junghoo Cho.');
INSERT INTO News VALUES(NULL, 'News: $3.46M to combine supercomputer simulations with big data 08/15/2015', 'NSF and University of Michigan have jointly sponsored our ConFlux project: a massively parallel system for solving open 
	problems in computational physics using large-scale machine learning! See the official news release here: http://www.engin.umich.edu/college/about/news/stories/2015/september/supercomputer-simulations-with-big-data');
INSERT INTO NewsinP VALUES(1, 2);
INSERT INTO News VALUES(NULL, 'News: Our paper got in CIDR 2013!', 'CIDR is based on a revolutionary vision which is quite different than the mainstream database conferences. This is what their website says: The biennial Conference on Innovative Data Systems 
	Research (CIDR) is a systems-oriented conference, complementary in its mission to the mainstream database conferences like SIGMOD and VLDB, emphasizing the systems architecture perspective. CIDR gathers researchers and practitioners from both academia and 
	industry to discuss the latest innovative and visionary ideas in the field. DBSeer is now accepted in CIDR\'s Outrageous Ideas and Vision Track. I am looking forward to presenting our DBSeer in January 2013!');
INSERT INTO NewsinP VALUES(2, 4);
INSERT INTO News VALUES(NULL, 'News: DBSeer\'s monitoring module is now open-source!', 'Download it from here. Email me if you run into any issues.');
INSERT INTO NewsinP VALUES(3, 4);
INSERT INTO News VALUES(NULL, 'News: Teradata has assigned a team of engineers to incorporate DBSeer into their framework!', 'Teradata is a leading provider of enterprise analytic technologies and services that include Data Warehousing, Business Intelligence 
	and CRM. A few months ago I presented DBSeer at Dagstuhl\'s Database Workload Management Workshop which is where I met a member of Teradata\'s workload management team. Long story short, as a result of the meetings that followed (between the Teradata\'s technical 
	managers and I), Teradata has decided to port DBSeer into their framework with the goal of automating their workload management mechanisms, which are currently based on manual configuration of a set of rules (called throttles). Exciting news is that with the allocation 
	of engineering resources at Teradata to this project, the adoption of DBSeer into their framework has now officially started! I am already excited and looking forward to this collaboration and to see DBSeer\'s applications in a large commercial database system!');
INSERT INTO NewsinP VALUES(4, 4);
INSERT INTO News VALUES(NULL, 'News: Our paper got in SIGMOD 2013!', 'The annual ACM SIGMOD/PODS conference is a leading international forum for database researchers, practitioners, developers, and users to explore cutting-edge ideas and results, and to exchange techniques, 
	tools, and experiences. The full version of our DBSeer paper is now accepted in SIGMOD 2013, and I am looking forward to presenting DBSeer in June 2013! Recently I have been traveling a lot, so I am extra excited that this year\'s SIGMOD is held somewhere close to Boston 
	(it is held in New York)!');
INSERT INTO NewsinP VALUES(5,4);
INSERT INTO News VALUES(NULL, 'News: DBSeer in the press!', 'DBSeer has received considerable coverage from the press soon after MIT News Office did a story on DBSeer! Read more here.');
INSERT INTO NewsinP VALUES(6,4);
INSERT INTO News VALUES(NULL, 'News: We have designed active learning algorithms to integrate machine learning into crowdsourcing workflows!', 'Read my post on ISTC\'s blog about how we have approached this problem.');
INSERT INTO NewsinP VALUES(7,5);
INSERT INTO News VALUES(NULL, 'News: BlinkDB is now open source!', 'Download our latest release from http://blinkdb.org');
INSERT INTO NewsinP VALUES(8,6);
INSERT INTO News VALUES(NULL, 'News: BlinkDB demo at the first BigData@CSAIL retreat!', 'I gave a demo of BlinkDB at the 1\'st annual bigdata@csail member meeting. On November 28, 2012, about 40 managers and researchers from 8 founding member of bigdata@csail attended this meeting including 
	-- AIG, EMC, Huawei, Intel, Microsoft, Samsung, SAP and Thomson Reuters -- and the MIT CSAIL research community. Our demo caused a lot of excitement! The audience loved it when they saw they could query 10TB of data in less than 2 seconds:)');
INSERT INTO NewsinP VALUES(9,6);
INSERT INTO News VALUES(NULL, 'News: Facebook is deploying BlinkDB!', 'According to the latest news, Facebook is scheduled to deploy and explore our BlinkDB on one of their 80-node clusters in February 2013. BlinkDB is built upon and is backward compatible with Hive/Hadoop. Given that 
	Facebook is the main contributor to Hive, this is a great news for the BlinkDB team:) Go BlinkDB!');
INSERT INTO NewsinP VALUES(10,6);
INSERT INTO News VALUES(NULL, 'News: Our recent submission to EuroSys 2013 got in!', 'Looking forward to going to Prague and get some feedback on our BlinkDB from the systems community.');
INSERT INTO NewsinP VALUES(11,6);
INSERT INTO News VALUES(NULL, 'News: BlinkDB won the Best Paper Award in EuroSys 2013!', 'Congratulations to the BlinkDB team!');
INSERT INTO NewsinP VALUES(12,6);
INSERT INTO News VALUES(NULL, 'News: Our paper on high-performance complex event processing won SIGMOD 2012\'s Best Paper Award!' ,NULL);
INSERT INTO NewsinP VALUES(13,7);
INSERT INTO News VALUES(NULL, 'News: Our comments were adopted into the US position for the next edition of SQL!', 'On March 13, 2013 most of my comments for the changes to the SQL standard (which were based on the papers we published in this area) were approved and adopted by the DM32.2 
	committee! The DM32.2 Task Group on Database develops standards for the syntax and semantics of database languages. This Task Group is the U.S. TAG to ISO/IEC JTC1/SC32/WG3 & WG4 and provides recommendations on U.S. positions to INCITS. I have been informed that (thanks to Fred Zemke) 
	3 out of my 4 comments on the recenetly proposed changes to SQL have been approved by the DM32.2 committee and will be deployed for the next edition of SQL standard. My comments are numbered 34, 35, and 36 in the following document. I am now an official contributor to the international 
	SQL standards process!');
INSERT INTO NewsinP VALUES(14,7);

INSERT INTO Public_content VALUES(1, 'Download VProfiler\'s Latest Release', 'https://github.com/mozafari/vprofiler');
INSERT INTO Public_content VALUES(4, 'Watch a Video Demo of DBSeer', 'https://vimeo.com/131120287');
INSERT INTO Public_content VALUES(4, 'Download DBSeer\'s Latest Release', 'http://dbseer.org/');
INSERT INTO Public_content VALUES(5, 'Visit our project\'s website', 'http://cliffguard.org/');
INSERT INTO Public_content VALUES(5, 'Download CliffGuard\'s Open-source Release', 'https://github.com/mozafari/cliffguard');
INSERT INTO Public_content VALUES(7, 'Visit our project\'s website', 'http://cliffguard.org/');
INSERT INTO Public_content VALUES(7, 'Download CliffGuard\'s Open-source Release', 'https://github.com/mozafari/cliffguard');
INSERT INTO Public_content VALUES(8, 'Download the Datasets used in the Paper', 'http://web.eecs.umich.edu/~mozafari/datasets/dbsherlock/dbsherlock_datasets.zip');
INSERT INTO Public_content VALUES(8, 'Download the Source Code for DBSherlock / DBSeer', 'http://dbseer.org');
INSERT INTO Public_content VALUES(9, 'Watch a Video Demo of DBSeer', 'https://vimeo.com/131120287');
INSERT INTO Public_content VALUES(9, 'Download DBSeer\'s Latest Release', 'http://dbseer.org/');
INSERT INTO Public_content VALUES(10, 'Visit our project\'s website', 'http://cliffguard.org/');
INSERT INTO Public_content VALUES(10, 'Download CliffGuard\'s Open-source Release', 'https://github.com/mozafari/cliffguard');
INSERT INTO Public_content VALUES(11, 'Download DBSeer and start using it (it\'s now open source)!' ,'http://dbseer.org/');
INSERT INTO Public_content VALUES(13, 'Download Our Extensible Active Learning System', 'https://github.com/mozafari/active-learning-system');
INSERT INTO Public_content VALUES(13, 'Download the Active Learning and Crowdsourced Datasets (Sentiment Analysis for Tweets) Used in the Paper', 'http://web.eecs.umich.edu/~mozafari/datasets/crowdsourcing/');
INSERT INTO Public_content VALUES(14, 'Download the Active Learning and Crowdsourced Datasets (Sentiment Analysis for Tweets) Used in the Paper', 'http://web.eecs.umich.edu/~mozafari/datasets/crowdsourcing/');
INSERT INTO Public_content VALUES(16, 'Download Verdict', 'http://verdictdb.org/');
INSERT INTO Public_content VALUES(17, 'Spin out an iSight cloud for free!', 'http://www.snappydata.io/product/isight');
INSERT INTO Public_content VALUES(17, 'Download Our Latest Release', 'http://www.snappydata.io/');
INSERT INTO Public_content VALUES(18, 'Download the Source Code for SnappyData', 'http://www.snappydata.io/');
INSERT INTO Public_content VALUES(21, 'Download the Source Code for NSH', 'https://github.com/pyongjoo/nsh');
INSERT INTO Public_content VALUES(22, 'Technical Report', 'https://arxiv.org/abs/1510.03921');
INSERT INTO Public_content VALUES(25, 'Download the Error Estimation Source Code for SQL Queries (I)', 'https://github.com/uclaabs/abs');
INSERT INTO Public_content VALUES(25, 'Download the Error Estimation Source Code for SQL Queries (II)', 'https://github.com/uclaabs/absHive');
INSERT INTO Public_content VALUES(27, 'Download ABS (A General Approximate Query Engine with Error Estimation)', 'https://github.com/uclaabs/abs');
INSERT INTO Public_content VALUES(27, 'Download the Hive modifications for ABS', 'https://github.com/uclaabs/absHive');
INSERT INTO Public_content VALUES(28, 'Download BlinkDB\'s official release.', 'http://blinkdb.org/');
INSERT INTO Public_content VALUES(29, 'Download BlinkDB\'s official release.', 'http://blinkdb.org/');
INSERT INTO Public_content VALUES(32, 'Read the extended version here.', 'http://web.eecs.umich.edu/~mozafari/papers/tods_2013.pdf');
INSERT INTO Public_content VALUES(38, 'Download the source code for frequent pattern/itemset mining over data streams', 'http://web.eecs.umich.edu/~mozafari/release/swim.1.0.1.tar.gz');
INSERT INTO Public_content VALUES(38, 'Download the implementation for DTV and DFV verifiers', 'http://web.eecs.umich.edu/~mozafari/release/dtv-dfv.1.0.1.tar.gz');