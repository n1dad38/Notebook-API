class Contact < ApplicationRecord
    belongs_to :kind

    def author
        "Nilton Lima"
    end

    def kind_description
        self.kind.description
    end

    def as_json(options={})
        super(
            root: true,
            methods: [:author, :kind_description],
            only: [:name, :email, :kind_id],
            include: {kind: {only: :description}}
        )
    end
end
