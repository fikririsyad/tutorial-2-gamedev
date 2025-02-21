# Tutorial 2 - Game Development

Nama: Fikri Risyad Indratno<br>
NPM: 2206031170

## Latihan: Playtest

### Apa saja pesan *log* yang dicetak pada panel **Output**?
Pesan yang muncul pada panel **Output** adalah "Platform initialized" dan "Reached objective!" ketika pesawat hampir menyentuh batas atas.

### Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan *log* yang dicetak pada panel **Output**?
Pesan *log* yang dicetak pada panel **Output** ketika pesawat hampir menyentuh batas atas adalah "Reached objective!"

### Buka *scene* `MainLevel` dengan tampilan *workspace* 2D. Apakah lokasi *scene* `ObjectiveArea` memiliki kaitan dengan pesan log yang dicetak pada panel **Output** pada percobaan sebelumnya?
Ya. Pada *workspace*, terlihat bahwa `ObjectiveArea` berada di atas posisi pesawat dan pada percobaan sebelumnya, pesawat akan mencetak pesan *log* "Reached objective!" ketika hampir menyentuh batas atas. `ObjectiveArea` menjadi tempat yang men-*trigger* pesan *log* tersebut ketika dilewati pesawat.

## Latihan: Memanipulasi Node dan Scene

### *Scene* `BlueShip` dan `StonePlatform` sama-sama memiliki sebuah *child node* bertipe `Sprite`. Apa fungsi dari *node* bertipe `Sprite`?
*Node* `Sprite` adalah sebuah *node* yang menampilkan tekstur 2D, yang dalam kasus ini, tekstur 2D tersebut adalah pesawat biru yang diambil dari `./assets/playerShip1_blue.png`.

### *Root node* dari *scene* `BlueShip` dan `StonePlatform` menggunakan tipe yang berbeda. `BlueShip` menggunakan tipe `RigidBody2D`, sedangkan `StonePlatform` menggunakan tipe `StaticBody2D`. Apa perbedaan dari masing-masing tipe *node*?
`RigidBody2D` tidak dapat dikontrol secara langsung, tetapi akan bergerak, berputar, bereaksi terhadap kolisi, dan mempengaruhi *physics bodies* di jalan yang dilewati ketika dikenai *forces* seperti gravity atau impulse. Berbeda dengan `RigidBody2D`, `StaticBody2D` dapat digerakkan secara manual seperti melalui kode, dan ketika bergerak, `StaticBody2D` akan diteleportasi ke posisi baru tanpa mempengaruhi *physics bodies* di jalannya.

### Ubah nilai atribut `Mass` pada tipe `RigidBody2D` secara bebas di *scene* `BlueShip`, lalu coba jalankan *scene* `MainLevel`. Apa yang terjadi?
Setelah saya ubah `Mass` menjadi 0.01 kg atau 1000 kg, nampaknya tidak ada perbedaan apapun pada pesawat saat *scene* dijalankan.

### Ubah nilai atribut `Disabled` pada tipe `CollisionShape2D` di *scene* `StonePlatform`, lalu coba jalankan *scene* `MainLevel`. Apa yang terjadi?
Pesawat akan jatuh menembus `StonePlatform`.

### Pada *scene* `MainLevel`, coba manipulasi atribut `Position`, `Rotation`, dan `Scale` milik *node* `BlueShip` secara bebas. Apa yang terjadi pada visualisasi `BlueShip` di Viewport?
Pesawat akan berubah posisi, rotasi, dan skalanya sesuai dengan nilai yang kita masukkan pada ketiga atribut tersebut.

### Pada *scene* `MainLevel`, perhatikan nilai atribut `Position` *node* `PlatformBlue`, `StonePlatform`, dan `StonePlatform2`. Mengapa nilai `Position` *node* `StonePlatform` dan `StonePlatform2` tidak sesuai dengan posisinya di dalam *scene* (menurut Inspector) namun visualisasinya berada di posisi yang tepat?
Karena nilai `Position` *node* `StonePlatform` dan `StonePlatform2` relatif terhadap `Position` *node* `PlatformBlue` bukan terhadap titik origin.

## Latihan Mandiri: Membuat Level Baru
Saya telah membuat *scene* untuk level baru bernama `NewLevel` dan di sini saya menggunakan `GreenShip` sebagai pesawat dan `Snow` sebagai platform. Pesawat, platform, dan `ObjectiveArea` berada di kanan layar. Ketika pemain mencapai objektif dari `MainLevel`, pemain akan dipindahkan ke `NewLevel`, dan ketika mencapai objektif dari `NewLevel`, pemain akan dipindahkan ke `MainLevel`.
