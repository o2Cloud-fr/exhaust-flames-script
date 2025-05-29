# 🛸 MyAlien Exhaust Flames

**MyAlien Exhaust Flames** est un script 🔧 batch Windows conçu pour automatiser l'ajout d'effets de flammes d'échappement dans **Assetto Corsa**. Il parcourt automatiquement toutes les voitures du jeu et configure les paramètres nécessaires pour des flammes spectaculaires 🔥.

![MyAlien Logo](https://avatars.githubusercontent.com/u/43967214?v=4)

## ✨ Fonctionnalités

- 🔥 **Flammes d'échappement** : Configuration automatique des effets pyrotechniques
- 🚗 **Traitement massif** : Modification de toutes les voitures en une seule exécution
- 📁 **Création automatique** : Génère les dossiers et fichiers manquants
- ⚙️ **Configuration complète** : Paramètres optimisés pour un rendu spectaculaire
- 🎨 **Interface stylée** : Affichage ASCII art avec thème alien
- 📊 **Suivi des modifications** : Compteur de fichiers traités

## 🎯 Fonctionnement

Le script configure automatiquement plusieurs types d'effets :

- 🔥 **ANTILAG** : Flammes d'anti-lag turbo
- ⚡ **DISCHARGE** : Flammes de décharge haute intensité
- 🏁 **FLAT_SHIFT** : Effets lors des changements de vitesse
- 🚨 **LIMITER** : Flammes au limiteur de régime
- 🎨 **PARTICLES_FX** : Effets visuels des particules

## 📋 Prérequis

- 🎮 **Assetto Corsa** installé via Steam
- 🖥️ **Windows** (script batch)
- 📁 Chemin d'installation : `D:\SteamLibrary\steamapps\common\assettocorsa\`
- 🔑 Droits d'écriture dans le dossier du jeu

## 🚀 Installation et utilisation

1. **Téléchargement** 📥
   ```bash
   git clone https://github.com/o2Cloud-fr/exhaust-flames-script.git
   ```

2. **Vérification du chemin** 📍
   - Ouvrez le script et vérifiez le chemin `CARS_PATH`
   - Modifiez si nécessaire selon votre installation Steam

3. **Exécution** ▶️
   - Double-cliquez sur le fichier `.bat`
   - Ou lancez depuis l'invite de commande :
   ```cmd
   exhaust_flames_myalien.bat
   ```

4. **Résultat** ✅
   - Le script traite automatiquement toutes les voitures
   - Affiche le nombre de modifications effectuées
   - Appuyez sur une touche pour fermer

## ⚙️ Configuration des flammes

### 🔥 Paramètres ANTILAG
- **Intensité** : 0.005 (réglage subtil)
- **Délai** : 0.0s (réaction instantanée)
- **Seuil turbo** : 1 (activation minimale)

### ⚡ Paramètres DISCHARGE
- **Intensité** : 30 (effet spectaculaire)
- **Durée** : 1s (flammes persistantes)
- **RPM min/max** : 6000-9000 (plage d'activation)
- **Probabilité** : 100% (toujours actif)

### 🏁 Paramètres FLAT_SHIFT
- **Intensité** : 10 (effet modéré)
- **Durée** : 0.1s (flash rapide)
- **Seuil RPM** : 6000 (activation haute)

### 🎨 Effets visuels
- **Taille** : x2.15 (flammes plus grandes)
- **Température** : x2.0 (couleur plus chaude)
- **Couleur** : Teinte bleutée personnalisée

## 📁 Structure des fichiers créés

```
assettocorsa/content/cars/[nom_voiture]/
├── extension/
│   └── ext_config.ini    <- Fichier de configuration généré
```

## 🛠️ Personnalisation

Pour modifier les paramètres, éditez les valeurs dans le script :

```batch
echo DISCHARGE_INTENSITY=30          # Intensité des flammes
echo DISCHARGE_DURATION=1            # Durée des flammes
echo SIZE_MULT=2.15                  # Taille des flammes
echo TEMPERATURE_MULT=2.0            # Température (couleur)
```

## 🔧 Dépannage

### ❌ Problèmes courants

- **Chemin introuvable** : Vérifiez l'installation d'Assetto Corsa
- **Permissions refusées** : Lancez en tant qu'administrateur
- **Encodage des caractères** : Le script utilise UTF-8 (chcp 65001)

### 🩺 Diagnostic

```cmd
# Vérifier le chemin d'installation
dir "D:\SteamLibrary\steamapps\common\assettocorsa\content\cars"

# Tester les permissions
echo test > "%CARS_PATH%\test.txt"
```

## 🎮 Utilisation en jeu

1. Lancez **Assetto Corsa**
2. Sélectionnez n'importe quelle voiture modifiée
3. Roulez à haut régime (6000+ RPM)
4. Relâchez l'accélérateur pour voir les flammes 🔥
5. Les effets sont visibles lors des changements de vitesse

## 👨‍💻 Auteur

- **[@MyAlien](https://github.com/o2Cloud-fr)** 👽 - Créateur et développeur principal

## 🏅 Badges

[![Windows](https://img.shields.io/badge/Platform-Windows-0078D6?logo=windows)](https://www.microsoft.com/windows)
[![Assetto Corsa](https://img.shields.io/badge/Game-Assetto_Corsa-red)](https://store.steampowered.com/app/244210/Assetto_Corsa/)
[![Batch](https://img.shields.io/badge/Language-Batch-blue)](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/windows-commands)

## 🤝 Contribution

Les contributions sont les bienvenues ! 🛠️

1. Forkez le projet
2. Créez une branche pour votre fonctionnalité
3. Committez vos changements
4. Poussez vers la branche
5. Ouvrez une Pull Request

## 📜 Licence

Ce projet est sous licence **MIT** - voir le fichier [LICENSE](LICENSE) pour plus de détails.

## 🔗 Liens utiles

- 🎮 [Assetto Corsa sur Steam](https://store.steampowered.com/app/244210/Assetto_Corsa/)
- 📚 [Documentation CSP (Custom Shaders Patch)](https://github.com/ac-custom-shaders-patch/acc-extension-config)
- 🛠️ [Guide modding Assetto Corsa](https://www.racedepartment.com/downloads/categories/ac-apps-tools.8/)

## 🛣️ Roadmap

- 🎨 Interface graphique (GUI)
- 🔧 Éditeur de paramètres avancé
- 💾 Sauvegarde/restauration des configurations
- 🌐 Support d'autres simulateurs de course
- 📦 Installateur automatique

## 🤝 Support

Pour toute assistance :
- 📧 Créez une issue sur GitHub
- 🌐 Visitez notre site : [o2Cloud](https://o2Cloud.fr)

## 🏗️ Stack technique

- 🔧 **Batch Script** (Windows CMD)
- 📁 **Manipulation de fichiers** système
- 🎨 **ASCII Art** pour l'interface
- 🔄 **Traitement en lot** automatisé

---

```
       🌌 ･ﾟ✧*:･ﾟ✧ MyAlien ✧ﾟ･: *✧･ﾟ 🌌
          👽 Fait avec passion pour la communauté AC 👽
```