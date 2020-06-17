class TitleValidator < ActiveModel::Validator

    def validate(record)
      if record.title != nil
        bait = ["Won't Believe", "Secret", "Top 10", "Guess"]
        found = bait.map do |b|
          record.title.include?(b)
        end
        unless found.include?(true)
          record.errors[:title] << "This title isnt clickbait-y"
        end
      end
    end
end