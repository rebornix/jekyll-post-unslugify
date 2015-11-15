module Jekyll
  class Document
    def url_placeholders
      {
        collection:  collection.label,
        path:        cleaned_relative_path,
        output_ext:  output_ext,
        name:        Utils.slugify(basename_without_ext),
        title:       Utils.slugify(data['slug']) || Utils.slugify(basename_without_ext),
        unslugified_title: data['slug'] || basename_without_ext,
        year:        date.strftime("%Y"),
        month:       date.strftime("%m"),
        day:         date.strftime("%d"),
        hour:        date.strftime("%H"),
        minute:      date.strftime("%M"),
        second:      date.strftime("%S"),
        i_day:       date.strftime("%-d"),
        i_month:     date.strftime("%-m"),
        categories:  (data['categories'] || []).map { |c| c.to_s.downcase }.uniq.join('/'),
        short_month: date.strftime("%b"),
        short_year:  date.strftime("%y"),
        y_day:       date.strftime("%j"),
      }
    end
  end
end
