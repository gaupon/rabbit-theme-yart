# margin
@margin_bottom /= 3

# Lightning Talk
# leave heare (top) to show progress when 'only title' slide
@enable_yart_lightning_talk = true if (@enable_yart_lightning_talk.nil?)
if (@enable_yart_lightning_talk)
  # use lightning_talk feature to manage 'only title' slide
  @lightning_talk_proc_name = "lightning-yart"
  @lightning_talk_as_large_as_possible = true
  include_theme("lightning-talk-toolkit")
  match(Slide) do |slides|
    slides.each do |slide|
      if slide.lightning_talk?
        slide.lightning_talk
      end
    end
  end
end

# progress space ratio
@image_slide_number_space_ratio ||= 1.0 / 36.0
@image_timer_space_ratio ||= 1.0 / 36.0

# progress images
#<a href="https://openclipart.org//detail/173421/stopwatch-by-markroth8-173421"><img src="https://openclipart.org//people/markroth8/1354075811.svg" /></a>
@image_timer_image ||="stopwatch.svg"

# <a href="https://openclipart.org//detail/184773/mic-icon-by-upacesky-184773"><img src="https://openclipart.org//people/Upacesky/icon_mic.svg" /></a>
@image_slide_number_image ||= "icon_mic.svg"

#<a href="https://openclipart.org//detail/59599/you"><img src="https://openclipart.org//people/Andy_Gardner/movedonhere.svg" /></a>
@image_slide_number_start_image ||= "movedonhere.svg"

#<a href="https://openclipart.org//detail/168253/target-by-fanda@cz"><img src="https://openclipart.org//people/Fanda@CZ/1329309424.svg" /></a>
@image_slide_number_goal_image ||= "target.svg"

@image_slide_number_show_text = false

# slide logo
#<a href="https://openclipart.org//detail/134815/rainbow-chalk-stroke-by-jhnri4"><img src="https://openclipart.org//people/jhnri4/Rainbow_chalk_stroke.svg" /></a>
#@slide_logo_image ||= "Rainbow_chalk_stroke.svg"
#include_theme("slide-logo")

# emphasis
emphasis_color = "#0055bb"
@default_emphasis_color = emphasis_color

# graffiti
graffiti_color = "#99cc33"
set_graffiti_color("#{graffiti_color}cc")
set_graffiti_line_width(15)

# block quote
# <a href="https://openclipart.org/detail/190316/edit-icon-by-minduka-190316"><img src="https://openclipart.org/people/Minduka/edit-icon.svg" /></a>
@block_quote_open_quote_image = "edit-icon.svg"
@block_quote_fill_color = "#{emphasis_color}15"
@block_quote_image_frame = true
@block_quote_image_width = canvas.width * 0.05
@block_quote_title_font_size = screen_size(2.0 * Pango::SCALE)
@default_block_quote_item1_mark_type = "dash"
@default_block_quote_item1_mark_color = emphasis_color

# pre-formatted text
@preformatted_frame_color = emphasis_color
@preformatted_fill_color = "#{emphasis_color}15"

# description list & enum.
@description_term_line_color = emphasis_color
@default_description_item1_mark_color = emphasis_color
@default_description_item1_mark_type = "dash"

# Headline
@default_headline_line_color = emphasis_color

# table
@table_frame_color = emphasis_color
@table_fill_color = "white"
@table_head_frame_color = emphasis_color
@table_head_fill_color ="#{emphasis_color}24"
@table_body_frame_color = emphasis_color
@table_body_fill_color = "#{emphasis_color}15"

# base theme
include_theme("default")

# icon
# original: <a href="https://openclipart.org/detail/13667/rgb-slides-by-molumen"><img src="https://openclipart.org/people/molumen/molumen_rgb_slides.svg" /></a>
@icon_images = ["molumen_rgb_slides.png"]
include_theme("icon")

#powered by
@powered_by_text = "\tPowered by Rabbit #{Rabbit::VERSION}"
include_theme("powered-by")

@slide_footer_info_line_color = "#{emphasis_color}32"
include_theme("slide-footer-info")

# slide content position
match(Slide, HeadLine) do |heads|
  heads.horizontal_centering = true
end
match(Slide, Body) do |bodies|
  bodies.vertical_centering = true
end

# Title style
match(TitleSlide, Title) do |titles|
  titles.prop_set("foreground", emphasis_color)
  titles.prop_set("style", "italic")
end

#include_theme("per-slide-background-image")
