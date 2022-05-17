class Contact < ApplicationRecord
    def author
        "Nilton Lima"
    end

    def as_json(options={})
        super(methods: :author, root: true, only: [:name, :email])
    end
end
