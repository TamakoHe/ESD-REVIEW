import numpy as np
import matplotlib.pyplot as plt

# Parameters for white noise
duration = 1.0  # seconds
sampling_rate = 1000  # Hz (samples per second)
num_samples = int(duration * sampling_rate)

# Generate white noise
white_noise = np.random.normal(0, 1, num_samples)  # Mean=0, Std=1

# Time axis for plotting
time = np.linspace(0, duration, num_samples, endpoint=False)

# Plot white noise in time domain
plt.figure(figsize=(10, 4))
plt.plot(time, white_noise, color='blue', alpha=0.7)
plt.title("White Noise in Time Domain")
plt.xlabel("Time (seconds)")
plt.ylabel("Amplitude")
plt.grid()
plt.tight_layout()
plt.show()

# Plot power spectral density (PSD)
plt.figure(figsize=(10, 4))
frequencies, psd = plt.psd(white_noise, NFFT=1024, Fs=sampling_rate, color='red')
plt.title("Power Spectral Density of White Noise")
plt.xlabel("Frequency (Hz)")
plt.ylabel("Power/Frequency (dB/Hz)")
plt.grid()
plt.tight_layout()
plt.show()
