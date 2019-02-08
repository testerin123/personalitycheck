# frozen_string_literal: true

personalities = [
  [
    "stetiger",
    "Du bist Wonderwoman. Du bist sehr harmoniebedürftig und gehst " \
    "Diskussionen lieber aus dem Weg. Du unterstützt gerne Andere ihre " \
    "Ziele zu erreichen, brauchst aber auch Unterstützung in deiner Arbeit. " \
    "Sich für andere einzusetzen ist deine Stärke. Neben einem friedlichen " \
    "miteinander, ist der respektvolle und liebe Umgang miteinander besonders" \
    " wichtig, da kann die Wahrheit nebensächlich sein."
  ],
  [
    "dominant",
    "Du bist Juggernaut und du liebst die Herausforderung. Du bist stark auf " \
    "Ergebnisse aus, wobei es dir nicht wichtig ist, wie du zu dem Ergebnis " \
    "gekommen bist. In deinem Arbeitsverhalten bist du sehr zügig unterwegs. " \
    "Demnach ist dir Aktionismus relativ wichtig. Du hast auch kein Problem " \
    "damit im Mittelpunkt zu stehen und den Ton anzugeben. Wenn du dir ein " \
    "Ziel gesetzt hast, kann dich keiner mehr davon abhalten."
  ],
  [
    "sozial_initiativ",
    "Du bist Luce Cage. Du sprichst sehr gerne mit anderen Menschen und " \
    "deine kommunikative Art macht dich beliebt. Teamgeist ist dir sehr " \
    "wichtig und du achtest auf ein gutes Miteinander und steckst dabei auch " \
    "einiges ein. Dich interessiert es herauszufinden, was andere motiviert " \
    "und du begeisterst andere durch deine Art. Dir liegt viel an deiner " \
    "Arbeit und das was du tust, tust du mit Leidenschaft. Jeder mag gerne " \
    "einen Luce um sich haben."
  ],
  [
    "gewissenhaft",
    "Du bist Mister Fantastic und zeichnest dich durch deine Agilität aus. " \
    "Du kannst dich in jeden Zustand hineinversetzen, auch wenn das manchmal " \
    "etwas dauert. Das liegt daran, dass du sehr genau und perfektionistisch " \
    "veranlagt bist. Du achtest auf Qualität und nicht auf Quantität, was " \
    "deine Kollegen sehr an dir schätzen. Du begibst dich auch manchmal aus " \
    "deiner Komfortzone und suchst die Herausforderung."
  ]
]

personalities.each do |name, description|
  Personality.create(name: name, description: description)
end

@stetiger = Personality.where(name: "stetiger").first
@dominant = Personality.where(name: "dominant").first
@sozial_initiativ = Personality.where(name: "sozial_initiativ").first
@gewissenhaft = Personality.where(name: "gewissenhaft").first

questions_and_answers = {
  "Wie reagieren Sie, wenn sie für längere Zeit in einer Einkaufsschlange stehen müssen?" => [
    "Ich schätze die Länge der Wartedauer ein, habe ich keine Zeit, werde ich die Schlange verlassen",
    "Ich warte geduldig, bis ich an der Reihe bin",
    "Ich bin genervt und bekomme schlechte Laune",
    "Ich komme mit der Person vor mir ins Gespräch"
  ],
  "Welche Eigenschaft trifft am meisten auf Sie zu?" => %w[Gesprächig Teamfähig Willensstark Dominant],
  "Wie verhalten Sie sich bei einer Gruppenarbeit?" => [
    "Ich beteilige mich",
    "Ich bringe mich aktiv ein und teile zu allem meine Meinung",
    "Ich liebe Gruppenarbeiten, denn da kann ich mich mit anderen austauschen",
    "Ich höre erstmal zu was die anderen zu sagen haben und weise die anderen darauf hin, falls wir vom Weg abkommen"
  ],
  "Wie verhalten Sie sich im Restaurant?" => [
    "Wenn ich Gerichte kenne, empfehle ich sie anderen",
    "Ich weiß schon was ich essen will",
    "Ich frage den Kellner immer was er mir empfehlen kann",
    "Ich brauche immer eine Weile, da ich mir die Karte immer komplett anschaue"
  ],
  "Wovor haben sie am meisten Angst?" => [
    "Beziehungen zu zerstören",
    "Fehler zu machen",
    "Die Motivation zu verlieren",
    "Risiken einzugehen"
  ],
  "Sie arbeiten gerne in einem Team zusammen?" => [
    "Ja, wenn ich anderen dabei helfe",
    "Nur wenn ich den Ton angeben kann",
    "Ja, total gerne",
    "Eher ungern. Ich kann alleine alles besser planen und koordinieren"
  ],
  "Entweder oder: Es ist Montagmorgen und sie beantworten lieber so schnell wie möglich ihre E-Mails oder trinken erstmal in Ruhe einen Kaffee und plaudern mit Kollegen" => [
    "Ich schaue erstmal, ob ich eine wichtige E-Mail beantworten muss. Wenn das der Fall ist, mache ich das natürlich zuerst und trinke dann in Ruhe mit Kollegen einen Kaffee",
    "Ich plauder gerne am Montagmorgen mit meinen Kollegen um ihnen von meinem Wochenende zu erzählen",
    "Wenn ich morgens ankomme, plauder ich gerne mit meinen Kollegen um mehr von ihnen zu erfahren",
    "Ich beantworte meine E-Mails so schnell wie möglich"
  ],
  "Sie initiieren normalerweise keine Gespräche" => [
    "Normalerweise nicht, es sei denn mir ist etwas wichtig, was ich dann natürlich mitteile",
    "Stimme ich nicht zu",
    "Stimme ich zu",
    "Es kommt auf das Gespräch drauf an. Wenn es für mich wichtig erscheint, dann ja"
  ],
  "Sie fühlen sich anderen Menschen überlegen" => [
    "Stimme ich nicht zu",
    "Stimme ich zu",
    "Stimme ich eher nicht zu",
    "Selten"
  ],
  "Eine Debatte zu gewinnen ist für Sie weniger wichtig als dafür zu sorgen, dass sich niemand aufregt" => [
    "Stimme ich nicht zu",
    "Stimme ich zu",
    "Stimme ich eher nicht zu",
    "Stimme ich eher zu"
  ],
  "Organisation ist für Sie wichtiger als Anpassungsfähigkeit" => [
    "Stimme ich nicht zu",
    "Stimme ich eher nicht zu",
    "Stimme ich eher zu",
    "Stimme ich zu"
  ],
  "Sie haben nichts dagegen im Mittelpunkt der Aufmerksamkeit zu stehen" => [
    "Ich habe nichts dagegen, muss aber nicht sein",
    "Nein, ich habe nichts dagegen im Mittelpunkt zu stehen, tue es sogar gerne",
    "Ich habe nichts dagegen, wenn ich ab und zu mal im Mittelpunkt stehe",
    "Ich betrachte lieber die Situation von außerhalb"
  ],
  "Es ist oft schwierig für Sie auf die Gefühle anderer Menschen einzugehen" => [
    "Stimme ich nicht zu",
    "Stimme ich zu",
    "Nein, ich kann immer über Gefühle sprechen",
    "Nicht oft aber manchmal"
  ],
  "In einer Diskussion sollte die Wahrheit wichtiger sein als die Sensibilität der Menschen" => [
    "Ich führe ungern Diskussionen",
    "Ja",
    "Ich versuche mehr auf die Sensibilität der Menschen einzugehen",
    "Ich würde sagen ja"
  ],
  "Sie sind oft neidisch auf Andere" => [
    "Nein",
    "Öfters ja",
    "Sehr selten",
    "Ich ertappe mich manchmal dabei"
  ]
}

questions_and_answers.each do |question, answers|
  question = Question.create(body: question)

  first_answer = answers[0]
  second_answer = answers[1]
  third_answer = answers[2]
  fourth_answer = answers[3]

  Answer.create(
    body: first_answer,
    question_id: question.id,
    personality_id: @stetiger.id
  )

  Answer.create(
    body: second_answer,
    question_id: question.id,
    personality_id: @dominant.id
  )

  Answer.create(
    body: third_answer,
    question_id: question.id,
    personality_id: @sozial_initiativ.id
  )

  Answer.create(
    body: fourth_answer,
    question_id: question.id,
    personality_id: @gewissenhaft.id
  )
end
