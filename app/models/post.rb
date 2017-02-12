class Post < ApplicationRecord
  validates :title, presence: true,
                    length: {
                      minimum: 5,
                      maximum: 50
                    }

  def getScore
    if upvotes.nil?
      upvotes = 0
    end

    if downvotes.nil?
      downvotes = 0
    end
    return upvotes - downvotes
  end

  def addUpvote
    YAML::dump(upvotes)
    upvotes += 1
    return getScore
  end

  def addDownvote
    downvotes += 1
    return getScore
  end

end
