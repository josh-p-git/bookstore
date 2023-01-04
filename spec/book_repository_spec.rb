require 'book_repository'

RSpec.describe BookRepository do
    it 'returns the list of books' do
        repo = BookRepository.new

        books = repo.all
        expect(books.length).to eq(5)
        expect(books.first.id).to eq('1')
        expect(books.first.title).to eq('Nineteen Eighty-Four')
        expect(books.first.author_name).to eq('George Orwell')
    end
end