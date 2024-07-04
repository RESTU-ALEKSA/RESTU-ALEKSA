float[] angles;
float[] speeds;
int numCubes = 5;
float[] sizes;
color[] cubeColors;

// Variabel untuk menyimpan posisi mouse sebelumnya
float prevMouseX;
float prevMouseY;

void setup() {
  size(600, 600, P3D);
  angles = new float[numCubes];
  speeds = new float[numCubes];
  sizes = new float[numCubes];
  cubeColors = new color[numCubes];
  
  for (int i = 0; i < numCubes; i++) {
    angles[i] = random(TWO_PI);
    speeds[i] = random(0.01, 0.05);
    sizes[i] = random(100, 300); // Ubah rentang ukuran kotak
    cubeColors[i] = color(random(255), random(255), random(255));
  }
  
  // Inisialisasi posisi mouse sebelumnya
  prevMouseX = mouseX;
  prevMouseY = mouseY;
}

void draw() {
  background(30);
  lights();
  
  // Menyesuaikan translasi agar kotak tampak di tengah
  translate(width/2, height/2, -200); 
  
  // Menghitung perbedaan posisi mouse
  float deltaX = mouseX - prevMouseX;
  float deltaY = mouseY - prevMouseY;
  
  // Mengubah rotasi berdasarkan perbedaan posisi mouse
  rotateY(radians(deltaX));
  rotateX(radians(deltaY));
  
  // Memperbarui posisi mouse sebelumnya
  prevMouseX = mouseX;
  prevMouseY = mouseY;
  
  for (int i = 0; i < numCubes; i++) {
    pushMatrix();
    float angle = angles[i] + speeds[i] * frameCount;
    rotateX(angle);
    rotateY(angle * 1.2);
    rotateZ(angle * 0.8);
    
    float size = sizes[i];
    float offset = size / 2.0;
    fill(cubeColors[i]);
    stroke(255);
    strokeWeight(2);
    
    // Menggambar kotak (bagian luar)
    box(size);
    
    // Menggambar bola di dalam
    noStroke();
    fill(cubeColors[i]);
    float sphereSize = size * 0.5; // Ukuran bola dalam relatif terhadap kotak (diubah menjadi 0.5)
    sphereDetail(30); // Menentukan detail bola
    sphere(sphereSize);
    
    popMatrix();
    
    angles[i] += speeds[i];
  }
}
