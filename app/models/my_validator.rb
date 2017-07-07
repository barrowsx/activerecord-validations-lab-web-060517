class MyValidator < ActiveModel::Validator
  def validate(record)
    if !record.title.nil?
      unless !record.title.at("Won't Believe").nil? || !record.title.at("Secret").nil? || !record.title.at("Top").nil? || !record.title.at("Guess").nil?
        record.errors[:title] << "Needs to be clickbait"
      end
    end
  end
end
