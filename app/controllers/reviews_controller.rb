class ReviewsController < ApplicationController
  def index
    matching_reviews = Review.all

    @list_of_reviews = matching_reviews.order({ :created_at => :desc })

    render({ :template => "reviews/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_reviews = Review.where({ :id => the_id })

    @the_review = matching_reviews.at(0)

    render({ :template => "reviews/show.html.erb" })
  end

  def create
    the_review = Review.new
    the_review.activities_id = params.fetch("query_activities_id")
    the_review.content = params.fetch("query_content")
    the_review.enrollment_id = params.fetch("query_enrollment_id")
    the_review.location_id = params.fetch("query_location_id")

    if the_review.valid?
      the_review.save
      redirect_to("/reviews", { :notice => "Review created successfully." })
    else
      redirect_to("/reviews", { :alert => the_review.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_review = Review.where({ :id => the_id }).at(0)

    the_review.activities_id = params.fetch("query_activities_id")
    the_review.content = params.fetch("query_content")
    the_review.enrollment_id = params.fetch("query_enrollment_id")
    the_review.location_id = params.fetch("query_location_id")

    if the_review.valid?
      the_review.save
      redirect_to("/reviews/#{the_review.id}", { :notice => "Review updated successfully."} )
    else
      redirect_to("/reviews/#{the_review.id}", { :alert => the_review.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_review = Review.where({ :id => the_id }).at(0)

    the_review.destroy

    redirect_to("/reviews", { :notice => "Review deleted successfully."} )
  end
end
