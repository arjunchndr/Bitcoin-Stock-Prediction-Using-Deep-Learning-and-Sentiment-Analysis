DROP TABLE IF EXISTS "btc_usd";
CREATE TABLE "btc_usd"(
    pdate   DATE NOT NULL,
    avg_open_price   DOUBLE PRECISION,
    avg_high_price   DOUBLE PRECISION,
    avg_low_price    DOUBLE PRECISION,
    avg_close_price   DOUBLE PRECISION
);

DROP TABLE IF EXISTS "btc_usd_tech_indicators";

CREATE TABLE "btc_usd_tech_indicators"(
    avg_close_price   DOUBLE PRECISION,
    avg_close_price_target   DOUBLE PRECISION,
    macd    DOUBLE PRECISION,
    stochastics   DOUBLE PRECISION,
    atr   DOUBLE PRECISION 
);

SELECT create_hypertable('btc_usd', 'pdate', 'avg_close_price', 2);
