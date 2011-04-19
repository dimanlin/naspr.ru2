module CommentsHelper

  def human_vote comment
    comment.vote == true ? t("view.home.for") : t("view.home.against")
  end
end
