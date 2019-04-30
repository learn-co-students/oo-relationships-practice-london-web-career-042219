Movie:
    has_many Appearances X
    has_many Characters through Appearances X
    has_many Actors through Characters through Appearances

Show:
    has_many Episodes X
    has_many Appearances through Episodes X
    has_many Characters through Appearances through Episodes X
    has_many Actors through Characters through Appearances through Episodes X

Actor:
    has_many Characters X
    has_many Appearances through Characters X
    has_many Movies through Appearances through Characters X
    has_many Episodes through Appearances through Characters X
    has_many Shows through Appearances through Episodes through Characters X

Character:
    belongs_to Actor X
    has_many Appearances X
    has_many Movies through Appearances X
    has_many Episodes through Appearances X
    has_many Shows through Episodes through Appearances X

Appearance:
    belongs_to Picture(Movie || Episode) X
    belongs_to Character X
    belongs_to Actor through Character X

Episode:
    belongs_to Show X
    has_many Appearances X
    has_many Characters through Appearances X
    has_many Actors through Characters through Appearances X
