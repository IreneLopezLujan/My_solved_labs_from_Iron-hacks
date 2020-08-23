
# Soldier
class Soldier:
    def __init__(self, health, strength):
        self.health= health
        self.strength= strength

    def attack(self):
        return self.strength 


    def receiveDamage(self, damage):
        self.health= self.health-damage

#Viking
class Viking(Soldier):
    def __init__(self, name, health, strength):
        super().__init__(health, strength)
        self.name = name
    #def attack , hereda el ataque de soldado y no se pone porque no varía.
    def receiveDamage(self, damage):
        super().receiveDamage(damage)
        if self.health >0:
            return f"{self.name} has received {damage} points of damage"
        else:
            return f"{self.name} has died in act of combat"

    def battleCry(self):
        return "Odin Owns You All!"


# Saxon
class Saxon(Soldier):
    def __init__(self, health, strength):
        super().__init__(health, strength)
        
    #def attack , hereda el ataque de soldado y no se pone porque no varía.
    def receiveDamage(self, damage):
        super().receiveDamage(damage)
        if self.health >0:
            return f"A Saxon has received {damage} points of damage"
        else:
            return 'A Saxon has died in combat'



# War
import random

#class War:
class War():
    def __init__(self):
        self.vikingArmy=[]
        self.saxonArmy=[]
    def addViking(self,viking):
        self.vikingArmy.append(viking)
    def addSaxon(self,saxon):
        self.saxonArmy.append(saxon)
    
    def vikingAttack(self):
        sax=random.choice(self.saxonArmy)
        vik=random.choice(self.vikingArmy)
        result=vik.receiveDamage(vik.attack())
        if result=="A Saxon has died in combat":
            self.Army.remove(sax)
        return result
    def saxonAttack(self):
        sax=random.choice(self.saxonArmy)
        vik=random.choice(self.vikingArmy)
        result=vik.receiveDamage(sax.attack())
        if result == f"{vik.name} has died in act of combat":
            self.vikingArmy.remove(vik)
        return result
    
    def showStatus(self):
        if self.saxonArmy==[]:
            return "Vikings have won the war of the century!"
        if self.vikingArmy==[]:
            return "Saxons have fought for their lives and survive another day..."
        else:
            return "Vikings and Saxons are still in the thick of battle."

        
