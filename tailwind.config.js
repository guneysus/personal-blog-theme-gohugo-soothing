module.exports = {
  purge: [
    './layouts/**/*.html',
    './layouts/**/*.js',
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      typography: {
        DEFAULT: {
          css: {
            pre: {
              backgroundColor: 'transparent',
              color: 'inherit',
              borderWidth: '1px',
            },
            code: {
              color: '#333',
              fontWeight: 600,
              '&::before, &::after': {
                color: '#ccc',
              },
            },
          },
        },
      }
    },
  }, 
  variants: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/typography')
  ]
}
