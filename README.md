Write CSV files as if they were normal view templates and they will be downloaded as attachments.


### Installation

- Add the following to your app's Gemfile

```shell
gem 'blue-csv'
```


- Or as a standalone gem by running on your shell:

```shell
gem install blue-csv
```


### Usage

The plugin exposes the object `csv` in your view templates, so you can write in your `index.csv.blue`:

```shell
csv << ["Title", "Author"]

@books.each do |book|
  csv << [book.title, book.author]
end
```

Your controller code would look like this:

```shell
def index
  @books = Book.all
  respond_to do |format|
    format.html
    format.csv { render :csv => 'export' }
  end
end
```



---
Copyright &copy; 2012 Artan Sinani