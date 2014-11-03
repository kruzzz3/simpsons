class AuthorsController < ApplicationController

  before_filter :authenticate 

  # GET /authors
  def index
    @authors = Author.order("name ASC").all
    @count = @authors.size
  end

  # GET /authors/1
  def show
    @author = Author.find(params[:id])
  end

  # GET /authors/new
  def new
    @author = Author.new
  end

  # GET /authors/1/edit
  def edit
    @author = Author.find(params[:id])
  end

  # POST /authors
  def create
    @author = Author.new
    @author.name = params[:author][:name]
  
    if @author.save
      redirect_to '/admin/authors/' + @author.id.to_s, notice: 'Autor erfogreich erstellt'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /authors/1
  def update
    @author = Author.find(params[:id])
    @author.name = params[:author][:name]

    if @author.save
      redirect_to '/admin/authors/' + @author.id.to_s, notice: 'Autor erfogreich erstellt'
    else
      render action: 'edit'
    end
  end

end
