#ifndef PATHOBJECT_H
#define PATHOBJECT_H

#include <list>
#include <QGraphicsItem>
#include "mapdata.h"

using namespace std;

class PathObject : public QGraphicsItem
{
public:
    explicit PathObject(QGraphicsItem *parent = 0);
    QRectF boundingRect() const;
    void paint(QPainter *painter, const QStyleOptionGraphicsItem *option,
               QWidget *widget);
    void update(Points *path);
    QPointF getPos();

private:
    Points _points;
    QColor _lineColor;

};

#endif // PATHOBJECT_H
