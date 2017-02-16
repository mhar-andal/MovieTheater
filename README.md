# Coding Challenge for LaunchPad Labs

Project Start Time: 2/15/2017
Project Status: Working

# Work Log
1. Designing Schema Visually
2. Create RSpec test for Models and Associations
3. Build toward passing the RSpec test
4. Refactor RSpec test and Models/Associations methods
5. Ensure all tests for Models/Associations are passing before starting Front-End work

# Thought Process
When I start with a rails application, I like to design my SQL schema visually first for all my models.

Schema:

![Schema Image](schema_image/schema_img.PNG)

After I design the schema, I write test files for each model and association to make sure I have something to test my work against.
The basic RSpec test files are finished, I now start building toward the test cases.

As I was thinking about my associations, I started to think about what would be the most efficient way to gather data through these associations. I couldn't come down to a more efficient solution then the one I already have, but I did decide to build custom helper methods to better fetch information in a DRY manner.

I've built a pretty solid grounding for my project as far as the backend. I'm going to start building the controllers and routing, as well as the front-end so I can start stringing everything together
