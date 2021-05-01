module.exports = {
  // mode: 'jit',
  purge: {
    enabled: true,
    content: [
      './src/**/*.elm',
      'index.html'
    ]
  },
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {},
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
