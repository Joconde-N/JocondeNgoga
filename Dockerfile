# Use an official OpenJDK runtime as a parent image
FROM openjdk:11

# Set your student ID as an environment variable
ENV STUDENT_ID=26441

# Set the working directory
WORKDIR /app

# Copy your project files
COPY . /app/

# Compile all Java files
RUN find . -name "*.java" -exec javac {} \;

# Install bash for a better interactive experience
RUN apt-get update && apt-get install -y bash && rm -rf /var/lib/apt/lists/*

# Create an interactive menu script
RUN echo '#!/bin/bash\n\
echo "================================================="\n\
echo "       WELCOME TO JAVA OOP CASE STUDY DEMO       "\n\
echo "================================================="\n\
echo "Student ID: $STUDENT_ID"\n\
echo ""\n\
echo "Please select a program to run:"\n\
echo "1) Construction Management System (REAL CONSTRUCTOR)"\n\
echo "2) Hotel Management System (LEMIGO HOTEL)"\n\
echo "3) Traffic Fine Management System (Rwanda National Police)"\n\
echo "4) Exit"\n\
echo ""\n\
read -p "Enter your choice (1-4): " choice\n\
\n\
case $choice in\n\
  1)\n\
    echo ""\n\
    echo "Starting Construction Management System..."\n\
    echo "----------------------------------------"\n\
    java Assignment_one.Question1.ConstructionMain\n\
    ;;\n\
  2)\n\
    echo ""\n\
    echo "Starting Hotel Management System..."\n\
    echo "----------------------------------------"\n\
    java Assignment_one.Question2.HotelMain\n\
    ;;\n\
  3)\n\
    echo ""\n\
    echo "Starting Traffic Fine Management System..."\n\
    echo "----------------------------------------"\n\
    java Assignment_one.Question3.TrafficMain\n\
    ;;\n\
  4)\n\
    echo "Exiting..."\n\
    exit 0\n\
    ;;\n\
  *)\n\
    echo "Invalid choice. Please run the container again."\n\
    ;;\n\
esac\n\
' > /app/menu.sh

RUN chmod +x /app/menu.sh

# Set entrypoint to run the menu script
ENTRYPOINT ["/bin/bash", "/app/menu.sh"]