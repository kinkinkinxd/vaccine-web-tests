# Vaccine Web Tests

## Installation 

### Move to project folder
```
cd vaccine-web-tests
```
### Installation the requirement package

```
pip install -r requirements.txt
```

### Running tests

```
python -m robot test_vaccine_haven.robot
```

## Test case list
| ID | Name                                 | Description                                                                               | Status |
|----|--------------------------------------|-------------------------------------------------------------------------------------------|--------|
| 1  | Test verify 2 items on the home page | Visit the home page and verify 2 items on the home page.                                  | Pass   |
| 2  | Test create a reservation            | Visit the home page, then click on (make a reservation button), and create a reservation. | Pass   |
| 3  | Test cancel the reservation          | Cancel the reservation made in the previous test.                                         | Pass   |

## Questions

### Which do you think is a better framework for E2E testing of web applications or web services: Robot Framework or Cucumber with Selenium/HTTP library and Junit?     
I think Cucumber is better than Robot Framework because it's user-friendly and easy to understand but if the test case 
requires a complex algorithm Robot Framework will be better.


### What tutorial or online resource(s) did you find most helpful for learning Robot Framework?
- https://robotframework.org/SeleniumLibrary/#usage
- https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html