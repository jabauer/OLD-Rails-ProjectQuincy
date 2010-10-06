#--- This code was loving stolen from:
# Excerpted from "Advanced Rails Recipes",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/fr_arr for more book information.
#---
module Searchable

  def searchable_by(*column_names)
    @search_columns = []
    [column_names].flatten.each do |name|
      @search_columns << name
    end
  end

  def search(query, fields=nil, options={})
    with_scope :find => {
               :conditions => search_conditions(query, fields) } do
      find :all, options
    end
  end
 
  def search_conditions(query, fields=nil)
    return nil if query.blank?
    fields ||= @search_columns
       
    # split the query by commas as well as spaces, just in case
    words = query.split(",").map(&:split).flatten
           
    binds = {}    # bind symbols
    or_frags = [] # OR fragments
    count = 1     # to keep count on the symbols and OR fragments

    words.each do |word|
      like_frags = [fields].flatten.map { |f| "LOWER(#{f}) LIKE :word#{count}" }
      or_frags << "(#{like_frags.join(" OR ")})"
      binds["word#{count}".to_sym] = "%#{word.to_s.downcase}%"
      count += 1
    end

    [or_frags.join(" AND "), binds]
  end
end