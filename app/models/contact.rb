class Contact < ApplicationRecord
    belongs_to :kind

    def author
        "Nilton Lima"
    end

    def as_json(options={})
        super(methods: :author, root: true, only: [:name, :email, :kind_id])
    end
end
