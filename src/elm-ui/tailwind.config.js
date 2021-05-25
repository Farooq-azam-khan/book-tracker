module.exports = {
  // mode: 'jit',
  purge: {
    enabled: false,
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
    extend: {
      borderWidth: ['hover', 'focus']
    },
  },
  plugins: [require('@tailwindcss/forms'),],
}
