import numpy as np
import matplotlib.pyplot as plt

# Define the square wave Fourier series for N=1
def fourier_square_wave(x, N):
    # The Fourier series for a square wave
    f = 0
    for n in range(1, 2*N, 2):  # We only take odd terms (1, 3, 5, ...)
        f += (1/n) * np.sin(n * x)
    return (4 / np.pi) * f  # Fourier series coefficient for square wave

# Create an array of x values (from -pi to pi)
x = np.linspace(-np.pi, np.pi, 1000)

# Calculate the Fourier series for N=1
N = 1
y_approx = fourier_square_wave(x, N)

# Plot the Fourier series approximation
plt.plot(x, y_approx, label=f'Fourier Series Approximation (N={N})')

# Add labels and a title
plt.title('Fourier Series Approximation of a Square Wave (N=1)')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.grid(True)
plt.axhline(0, color='black',linewidth=1)
plt.axvline(0, color='black',linewidth=1)

# Show the plot with legend
plt.legend()
plt.show()

