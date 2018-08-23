class Teacher < ActiveRecord::Base
  has_many :reviews
  has_many :students, through: :reviews
  belongs_to :school


#highest rating of a specific teacher
  def highest_review
      arr = Review.all.select do |review|
        review.teacher_id == self.id
      end
      sort_reviews_by_rating = arr.sort_by do |review|
        review.rating
      end
        sort_reviews_by_rating.last
  end#END

  def lowest_review
    arr = Review.all.select do |review|
      review.teacher_id == self.id
    end
    sort_reviews_by_rating = arr.sort_by do |review|
      review.rating
    end
      sort_reviews_by_rating.first
  end





end#END OF CLASS