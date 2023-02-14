class DocumentsController < ApplicationController
    def index
        @documents = Document.all 
    end
    def new
        @document = document.new   
    end
    def create
        @document = document.new (document_params)
        if @documwnt.save 
            redirect_to employees_path, notice: "Employee has been created successfully."
        else 
            render :new
        end
    
    end

    def edit
        @document = Document.find(params[:id])
    end

    def update
        @document = Document.find(params[:id])
        if @document.update(document_params)
            redirect_to document_path, notice: "Document has been updated successfully."
        else 
            render :edit
        end
    end

    def show
         @document = Document.find(params[:id]) 
    end

    def destroy

        @document = Document.find(params[:id]) 
        if @document.destroy
            redirect_to documents_path, notice: "Document has been deleted successfully."
        end
    end

    private

    def document_params
        params.require(:document).permit(:doc_name , :doc_type, :employee_id)
    end
    
end