package com.cattle.xchange.domain.cattle;

import com.cattle.xchange.domain.cattle.enums.CattleStatusEnum;
import com.cattle.xchange.domain.common.RepositoryBaseImpl;
import com.querydsl.core.BooleanBuilder;

import java.util.List;

class CattleAdRepositoryImpl extends RepositoryBaseImpl implements CattleAdCustomRepository {

    @Override
    public List<CattleAd> findByCriteria(String city) {
        QCattleAd qCattleAd = QCattleAd.cattleAd;
        BooleanBuilder whereClause = new BooleanBuilder();

        // Always filter by active CattleAds
        whereClause.and(qCattleAd.status.eq(CattleStatusEnum.ACTIVE));

        if (city != null) {
            whereClause.and(qCattleAd.city.eq(city));
        }

        return select(qCattleAd)
                .from(qCattleAd)
                .where(whereClause)
                .fetch();
    }

}
