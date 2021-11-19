# Point of Sales Terminal

<p align="center"><project-description></p>

## Links

- [Repo](https://github.com/ostenda/OOPAssassment "Repo")
  
## Project plan
  
![Plan](/sshots/Plan.JPG "Plan")

## Terminal view

![Terminal](/sshots/terminal.JPG "Terminal")
  
## UML Robustness Diagram
  
![RDiagram](/sshots/RDiagram.png "RDiagram")
 
![RDiagram](/sshots/Robustness.png "RDiagram")

## How to setup

1) Clone the repo
```shell
git clone https://github.com/ostenda/OOPAssassment
```
2) Open the project in netbeans and find the web module
3) Start the webserver
4) Go to http://localhost:8080/ 
  
# Use Cases 
There are many cases in which a user can use this application:

## User point of view

| Procedure order | Action | Response|
|------|--------|---------|
| Step 1 | User is directed to the homepage by the web adress | Redirecting the user to the homepage | 
| Step 2 | User can login as a client to the home page| The application checks whether the user data is correct.  |
| Step 3 | User can provide the card details or use the terminal | Application checks if the credit card details are correct and vlaidates it using the luhn algorithm
| Step 4 | Application checks the card details and procceds for a transaction | An error message is shown |
| Step 5 | If card details are not provided or doesn't match return an error message | An error message is shown to correct the details |


# Contributions 
To start the project all the developers split up the work. It consisted of parts related to the backend, frontend, planning, documentation, diagrams or refactoring Code

| Michal Ostenda | Alex Lloyd | Jonathan Ortiz | Joao Fragosopotes | Rodrigo Amaral |
|-------------|--------------------|-------------|-----------------|-----------------|
| Github | Backend |  Use Cases      |  Html/css/js     | Attributed tasks|
|Html/css/js| Design Application| Wireframes  |          |Help Teammates with their tasks|
|Refactoring Code|  Refactoring Code  | HTML/CSS/JS    |          |Frontend/Backend|
|Documentation|           |              |          |Robustness Diagram|

## Built With

- Java
- JavaScript
- HTML
- Tomcat
- Java server pages (JSP) 
- CSS
