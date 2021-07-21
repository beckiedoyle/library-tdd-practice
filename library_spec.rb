require 'library.rb'

describe Library do
  it 'can find a specific book' do
    library = Library.new
    library.find_book("Learn Ruby The Hard Way")
    expect(library.find_book("Learn Ruby The Hard Way")).to eq({title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'})
  end

  it 'can add a new book' do
    library = Library.new
    library.add_book("Peter Pan")
    expect(library.add_book("Peter Pan")).to eq([{:author=>"Sandi Metz", :subject=>"OOP", :title=>"POODR"}, {:author=>"Zed Shaw", :subject=>"Ruby", :title=>"Learn Ruby The Hard Way"}, {title: "Eloquent JavaScript", author: "Marijn Haverbeke", subject: "JS"}, {:author=>"Sandi Metz", :subject=>"Ruby", :title=>"The Well Grounded Rubyist"}, "Peter Pan", "Peter Pan"])
  end

  it 'can remove a book' do
    library = Library.new
    library.remove_book("Eloquent JavaScript")
    expect(library.remove_book("Eloquent Javascript")).to eq([{:author=>"Sandi Metz", :subject=>"OOP", :title=>"POODR"}, {:author=>"Zed Shaw", :subject=>"Ruby", :title=>"Learn Ruby The Hard Way"}, {:author=>"Sandi Metz", :subject=>"Ruby", :title=>"The Well Grounded Rubyist"}])
  end

  it 'can list all the books on a specific subject' do
    library = Library.new
    library.all_books_by_subject("Ruby")
    expect(library.all_books_by_subject("Ruby")).to eq([{:author=>"Zed Shaw", :subject=>"Ruby", :title=>"Learn Ruby The Hard Way"}, {:author=>"Sandi Metz", :subject=>"Ruby", :title=>"The Well Grounded Rubyist"}])
  end
end
