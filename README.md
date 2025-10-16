# 🧙‍♂️ WoW Analytics: Mythic+ Season TWW1 (EU & US)

An interactive **Tableau Dashboard** built using data from **World of Warcraft: The War Within (Season 1)**.  
This analysis explores class popularity, specialization trends, dungeon performance, and faction distribution in **Mythic+** runs.

---

## 📊 Project Overview

The dataset was extracted from the **Raider.io** and processed through **Google BigQuery**.  
After applying `UNNEST` operations, the dataset expanded from ~4,000 grouped entries to more than **80,000 individual rows**,  
each representing a unique Mythic+ character run.

This dashboard visualizes and compares player behavior across different regions (EU & US) and provides insights into  
balance, performance, and class popularity within the first season of *The War Within*.

---

## ⚙️ Tools Used

- **Google BigQuery** → SQL data processing, JSON flattening via `UNNEST`
- **Tableau** → Data visualization and dashboard design
- **Python / Pandas** *(optional preprocessing)*
- **Warcraft Logs API** → Source data for Mythic+ player performance

---

## 📈 Dashboard Visuals

### 🟦 Alliance vs Horde
- Pie chart comparing total active players by faction.  
- Result: **Alliance dominates (≈66%)** compared to **Horde (≈34%)**.

### ⚔️ Top 5 Most Popular Classes
- Bar chart showing player distribution among classes.  
- Top performers: **Paladin, Shaman, Evoker, Priest, Death Knight**.

### 🧩 Top 5 Most Popular Specializations
- Highlights the most played specs in Season TWW1:  
  **Protection Paladin, Augmentation Evoker, Discipline Priest, Enhancement Shaman, Frost DK**.

### ⏱️ Average Run Time per Dungeon
- Displays the average completion time (in minutes) for each dungeon.  
- Most runs take between **28–35 minutes**.

### 🧾 Average Score by Dungeon
- Compares average Mythic+ scores achieved in each dungeon.  
- All dungeons maintain similar average scores (~450+).

---

## 🌍 Dataset Details

| Field | Description |
|-------|--------------|
| `character_id` | Unique character identifier |
| `class_name` | Player class (e.g., Paladin, Shaman) |
| `character_specialization` | Spec name (e.g., Discipline, Augmentation) |
| `character_faction` | Alliance / Horde |
| `dungeon_name` | Dungeon title |
| `running_time_ms` | Completion time (milliseconds) |
| `score` | Mythic+ score for the run |
| `region` | EU and US |

---

## 💡 Key Insights

- The **Alliance** player base is significantly larger (≈66%).  
- **Protection Paladins** and **Augmentation Evokers** are the most popular specs.  
- Average Mythic+ score consistency suggests strong player skill parity across dungeons.  
- Most dungeons average **30–35 minutes** per run.

---

## 📜 License

This project is released under the [MIT License](LICENSE).

---

### 👤 Author

**Oleksii Shevchenko**  
🔗 [GitHub Profile](https://github.com/Borock1212)
