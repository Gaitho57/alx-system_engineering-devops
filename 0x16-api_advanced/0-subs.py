import requests

# Base URL of the API
base_url = "https://jsonplaceholder.typicode.com"

# GET request to retrieve a list of books
response = requests.get(f"{base_url}/posts")

# Check if the request was successful (status code 200)
if response.status_code == 200:
    # Get the list of books
    books = response.json()

    # Get the number of books
    number_of_books = len(books)

    print(f"Number of books: {number_of_books}")
else:
    print(f"Error: Unable to retrieve books (Status code: {response.status_code})")
