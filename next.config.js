const path = require('path');

/** @type {import('next').NextConfig} */
const nextConfig = {
  // Hapus appDir karena sudah tidak diperlukan
  images: {
    remotePatterns: [{ protocol: 'https', hostname: '**' }]
  },
  webpack: (config) => {
    config.resolve.alias['@'] = path.resolve(__dirname);
    return config;
  }
};

module.exports = nextConfig;
