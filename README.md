# Coding Challenge for LaunchPad Labs

Project Start Time: 2/15/2017
Project Status: Working

# Work Log
1. Designing Schema Visually
2. Create RSpec test for Models and Associations
3. Build toward passing the RSpec test
4. Refactor RSpec test and Models/Associations methods
5. Ensure all tests for Models/Associations are passing before starting Front-End work
6. Setup Bootstrap framework environment
7. Establish Header Layout(Header Title and Menu Button)
8. Deploy to heroku to test on mobile phone rather than chrome dev tool mobile view
9. Wireframe Basic Layout with Routes
10. Create Routes/Controllers
11. Setup Database seeds
12. Finish Homepage(/)
13. Finish Showing Page(/showings/:id)
14. Finish Ticket Purchase with Mailing
15. Finish Cinema Pages(create/edit)
16. Finish Showing Pages(create/show)
17. Finish Movie Pages(create/show)
18. Finish Order Display(show)


# Thought Process
When I start with a rails application, I like to design my SQL schema visually first for all my models.

Schema:

![Schema Image](screenshots/schema_img.png)

After I design the schema, I wrote test files for each model and association to make sure I have something to test my work against.
The RSpec test files are finished, I now start building toward the test cases.
I've built a pretty solid grounding for my project as far as the backend. I'm going to start wireframing my application, as this will provide a foundation for me to build my controllers and routes.
I finished with some of the layouts, having issues designing the UI for cinemas and showtimes. I've moved onto creating my routes and controllers. As I build these routes and controllers, I start updating the views with some basic layouts. After creating the routes/controllers/views, I started working on my database seeds so I can have content to work with.
After I finished the seeds, I began to work on the front-end and started to string together the views/controllers. I started with the showings page and established a UI for purchasing tickets. I went with the "fandango" style dot seats for a one ticket purchase experience. After the UI design, I worked on ticket purchase page. At this point, I integrated the validations for the credit card information as well as the action mailer for the email order receipts. After finishing the ticket purchasing, I moved on to the cinema management page, where I created a basic cinema 


![Schema Image](screenshots/homepage.png)
![Schema Image](screenshots/cinema.png)
![Schema Image](screenshots/ticket_new.png)
