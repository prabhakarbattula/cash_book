class BooksController < ApplicationController
	before_action :authenticate_user!
	before_action :set_book, only: [:show, :edit, :update, :destroy, :ledgerindex]

  # GET /books
  # GET /books.json
  def index

    if params[:starting].present?
	    @books = Book.where("date >= ? AND date <= ?", params[:starting], params[:ending]).order("date")
    else
			@books = Book.all.order("date")
		end
  end

  def ledgerindex
		@opening_balance = Ledger.find(params[:id]).opening_balance
		if params[:starting].present?
			@books = Book.where("date >= ? AND date <= ?", params[:starting], params[:ending]).order("date")
		else
			@books = Book.all.order("date")
		end
  end

  def dashboard
			if user_signed_in?
				  @cash = Ledger.find(1).opening_balance
				  @bank = Ledger.find(4).opening_balance

				  Book.all.each do |book|
					  if book.debit_id == 1
						  @cash -= book.amount
					  elsif book.credit_id == 1
						  @cash += book.amount
					  end
				  end

				  Book.all.each do |book|
					  if book.debit_id == 4
						  @bank -= book.amount
					  elsif book.credit_id == 4
						  @bank += book.amount
					  end
				  end
			else
				redirect_to dashboard_books_path
			end
  end


  # GET /books/1
  # GET /books/1.json
  def show
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:date, :debit_id, :credit_id, :amount)
    end
end
