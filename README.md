# Project Overview
 FitJourney is an easy-to-use system that helps people reach their fitness goals by tracking workouts, checking progress, and analyzing fitness data over time. The main purpose of the system is to give users a simple way to manage their fitness journey. This includes setting goals, logging exercises, and viewing progress through easy-to-read graphs. FitJourney helps users take control of their health by providing a simple, data-driven approach to reaching their fitness goals.

# Python Concepts and Libraries Used

# Python Libraries
1. Tkinter
- FitJourney's GUI is built with Tkinter, enabling a user-friendly desktop application with interactive widgets like buttons and text boxes. The system features five main interfaces: Login, Registration, Admin, Log Workout, and Progress Dashboards. The Progress Dashboard includes a line graph displaying workout progress.

2. MySQL
- MySQL is used to manage the system's database, storing and retrieving data efficiently with SQL queries. The FitJourney database organizes user information and workout data seamlessly.

3. Pillow
- Pillow handles image manipulation, including resizing and integrating background images for the user login screen. It supports various formats, ensuring smooth image handling within the Tkinter interface.

4. Matplotlib
- Matplotlib generates line graphs that visualize workout progress, showing duration and calories burned. These visuals help users track their fitness journey effectively.

5. TTK
- TTK enhances the interface with modern, polished widgets, improving both usability and aesthetics for a professional user experience.

# Python Concepts
1. Database Connections
- Database logic is organized in a separate file using a Connections class, making the code cleaner and easier to maintain. SQLite is used to store and manage data like user details, workout types, and exercises via sqlite3 for CRUD operations.

2. CRUD Operations
- The system supports Create, Read, Update, and Delete (CRUD) operations for managing data, such as adding exercises and updating user profiles.

3. User Prompt GUI
- The Tkinter interface collects user inputs, including Workout Type, Exercise Type, Duration, Repetitions, Fitness Goal, Weight, and Height. Users can save these details, after which the Workout Progress GUI displays a graph of their progress.

# SDG's and It's Integration into the Project
1. Good Health and Well-being
- FitJourney promotes healthier lives by simplifying workout tracking and goal-setting, encouraging regular exercise for better physical and mental health. Personalized progress tracking keeps users motivated, helping them build habits for long-term wellness.

2. Decent Work and Economic Growth
- By improving health, FitJourney boosts energy, productivity, and performance in daily life and work. Healthier users take fewer sick days, reducing healthcare costs and saving time through automated fitness tracking.

3. Reduced Inequalities
- FitJourney is inclusive and accessible, offering diverse workouts for all fitness levels. Its user-friendly design removes barriers, empowering everyone to improve their health regardless of their background.

# Instruction for Running the Program

1. Download the Fitjourney.zip

2. Extract the Fitjourney.zip
- where it contains  the following:
- ftProgram,py
- connection.py
- db folder which contains (fitjourney.sql)
- images folder which contains (background)


3. Open XAMPP and start the Mysql service
- link for Xampp: https://www.apachefriends.org/download.html

4. Run the Program
- Open your Visual Studio Code and look for the Folder Fitjourney and open it
- Once done, Create a new terminal and:
- write python ftprogram.py and enter
- After that you will be redirected to the system and can navigate it
- Link for VScode: https://code.visualstudio.com/download





