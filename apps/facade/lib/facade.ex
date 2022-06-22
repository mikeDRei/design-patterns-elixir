defmodule Facade.Video do
  def convertMP4 do
    IO.puts("Melhorando a qualidade do video!")
  end
end

defmodule Facade.Audio do
  def convertMP3 do
    IO.puts("Melhorando a qualidade do audio!")
  end
end

defmodule Facade do
  defdelegate video_options, to: Facade.Video, as: :convertMP4
  defdelegate audio_options, to: Facade.Audio, as: :convertMP3
end

Facade.video_options()
Facade.audio_options()
