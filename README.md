# RATHVYE Shopify Theme

A custom luxury-fashion Shopify theme created for **RATHVYE — Defined by Style**. The storefront combines an editorial, minimalist visual direction with Shopify-native product, cart, customer and checkout functionality.

## Preview

- Storefront: [rathvye.myshopify.com](https://rathvye.myshopify.com/?preview_theme_id=188630368558)
- Preview password: `naman`
- Shopify theme: `RATHVYE Atelier Preview`

The theme is currently maintained as an unpublished Shopify preview theme. Review and test it before publishing it to the live storefront.

## Included features

- Responsive luxury homepage for desktop and mobile
- Editorial hero and collection storytelling sections
- Product and collection templates
- Product variants, availability, quantity and pricing
- Native Shopify Add to Bag flow
- Accelerated checkout buttons
- Editable delivery, returns and garment-care information
- Size-guide interface
- Secure payment-method display
- Cart quantity updates, removal, order notes and subtotal
- Shopify-hosted checkout handoff
- Collection sorting and pagination
- Store search
- Customer account link
- Contact form
- Newsletter signup
- Dynamic Shopify policy links
- Password-protected launch page
- Custom 404 page

## Project structure

```text
assets/       Brand and editorial imagery
config/       Shopify theme settings
layout/       Storefront and password layouts
locales/      Theme translations
preview/      Standalone local design preview
sections/     Reusable Shopify storefront sections
snippets/     Shared styles and scripts
templates/    Shopify JSON page templates
```

## Install on Shopify

### Upload the packaged theme

1. Download `rathvye-launch-ready-theme.zip`.
2. Open Shopify Admin.
3. Go to **Online Store → Themes**.
4. Select **Add theme → Upload zip file**.
5. Upload the ZIP and preview the theme.
6. Do not publish until the catalogue, policies, shipping, tax and payment settings have been reviewed.

### Upload the source with Shopify CLI

Install and authenticate the official Shopify CLI, then run:

```bash
shopify theme push --store rathvye.myshopify.com --unpublished
```

Always target an unpublished theme during development.

## Local static preview

The `preview` folder provides a lightweight design preview. From the project root, serve the folder with any static HTTP server and open `/preview/` in a browser.

The Shopify Liquid theme itself must run through Shopify to provide real product, cart, customer and checkout data.

## Launch requirements

The theme code is ready for real commerce, but the merchant must provide or configure:

- Product names, descriptions and prices
- Product photography
- Sizes, variants, SKUs and inventory
- Exact garment measurements
- Shipping zones, rates and delivery estimates
- Confirmed return and exchange rules
- Privacy, refund, shipping and terms-of-service policies
- GST and tax configuration
- Business identity and banking information
- Shopify Payments or another supported payment provider
- A complete test order, cancellation and refund check

Never use invented legal, tax, banking, inventory or pricing information on the live store.

## Development workflow

1. Make changes in the appropriate Liquid section, template or snippet.
2. Validate Liquid and JSON before uploading.
3. Push changes to the unpublished Shopify preview theme.
4. Test desktop and mobile layouts.
5. Test product selection, cart updates and Shopify checkout with a real test product.
6. Commit the validated source to GitHub.

## Repository

[github.com/RakheebShaik-web/rathvye-shopify-](https://github.com/RakheebShaik-web/rathvye-shopify-)

## License

This project contains custom brand assets and client-specific design work. All rights are reserved unless the repository owner provides a separate license.
