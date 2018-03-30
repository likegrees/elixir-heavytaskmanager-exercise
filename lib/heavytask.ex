defmodule Heavytask do
  # questo modulo serve a mostrare come potrebbe essere gestito un task con un carico di lavoro molto alto senza bloccare
  # l'esecuzione principale. È possibile fare ciò invocando il modulo tramite "Task.async" una funzione che permette di
  # eseguire in background il modulo e prendere i risultati solo nel momento in cui ci serve.
  def heavyProcess do
    IO.puts "processo pesante iniziato"
    :timer.sleep(10000)
    IO.puts "processo pesante completato"
    "completato"
  end
end
