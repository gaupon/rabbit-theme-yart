# margin
@margin_bottom /= 2

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
@slide_logo_image ||= "Rainbow_chalk_stroke.svg"
include_theme("slide-logo")

# emphasis
emphasis_color = "#0055bb"
@default_emphasis_color = emphasis_color

# graffiti
graffiti_color = "#99cc33"
set_graffiti_color("#{graffiti_color}cc")
set_graffiti_line_width(15)

# base theme
include_theme("default")

#powered by
@powered_by_text = "\tPowered by Rabbit #{Rabbit::VERSION}"
include_theme("powered-by")

# slide content position
match(Slide, HeadLine) do |heads|
  heads.horizontal_centering = true
end
match(Slide, Body) do |bodies|
  bodies.vertical_centering = true
end

include_theme("per-slide-background-image")
