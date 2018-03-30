defmodule Heavytaskmanager do
  # questo modulo invoca Heavytask, e mostra il funzionamento di "Task".
  def startProcess do
    Task.async(Heavytask, :heavyProcess, [])
  end

  # la funzione processReady? prende il risultato del task che abbiamo lanciato in precedenza
  def processReady?(task) do
    Task.await(task)
  end

  # le funzioni seguenti servono a dimostrare che il programma non è "impegnato" ad eseguire "Heavytask" ma che
  # sono due processi indipendenti
  def sum(a, b) do
    a+b
  end

  def subtract(a, b) do
    a-b
  end

  def divide(a, b) do
    a/b
  end

  def multiplication(a, b) do
    a*b
  end
end
