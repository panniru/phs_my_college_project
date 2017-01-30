package com.algorithms.week3;

import java.util.Comparator;

import edu.princeton.cs.algs4.StdDraw;

public class Point implements Comparable<Point> {
	public int x;
	public int y;

	public Point(int x, int y) {
		this.x = x;
		this.y = y;
	}

	 /**
     * Draws this point to standard draw.
     */
    public void draw() {
        /* DO NOT MODIFY */
        StdDraw.point(x, y);
    }

    /**
     * Draws the line segment between this point and the specified point
     * to standard draw.
     *
     * @param that the other point
     */
    public void drawTo(Point that) {
        /* DO NOT MODIFY */
        StdDraw.line(this.x, this.y, that.x, that.y);
    }

	/**
	 * Compare by y-coordinates, breaking ties by x-coordinates
	 */
	@Override
	public int compareTo(Point that) {
		if (this.y == that.y) {
			return ((this.x - that.x) < 0 ? -1 : (((this.x - that.x) == 0) ? 0 : 1));
		}
		return ((this.y - that.y) < 0 ? -1 : 1);
	}

	/**
	 * Method should return the slope between the invoking point (x0, y0), which is given by the formula (y1-y0)/ (x1-x0).
	 * 
	 * @param that
	 * @return the slope of the horizontal line as +ve zero, slope of the vertical line as +ve infinity and 
	 * slope of the degenerate line as -ve infinity
	 * 
	 */ 
	public double slopeTo(Point that) {
		if(this == that){
			return Double.NEGATIVE_INFINITY;
		}
		if(this.y == that.y){
			return (this.x - that.x)/this.x;
		}
		if(this.x == that.x){
			return Double.POSITIVE_INFINITY;
		}
		return ((that.y-this.y) / (that.x - this.x));
	}
	
	/**
	 * 
	 * @return Comparator which compares its two argument pointsby their slopes making with the invoking point (x0, y0)
	 */
	public Comparator<Point> slopeOrder(){
		return new Comparator<Point>() {

			@Override
			public int compare(Point p1, Point p2) {
				double slope1 = Point.this.slopeTo(p1);
				double slope2 = Point.this.slopeTo(p2);
				return ((slope1 -slope2) < 0 ? -1 : ((slope1 -slope2) == 0)? 0 : 1) ;
			}
		};
	}
	
	 /**
     * Returns a string representation of this point.
     * This method is provide for debugging;
     * your program should not rely on the format of the string representation.
     *
     * @return a string representation of this point
     */
    public String toString() {
        /* DO NOT MODIFY */
        return "(" + x + ", " + y + ")";
    }

    /**
     * Unit tests the Point data type.
     */
    public static void main(String[] args) {
        /* YOUR CODE HERE */
    }

}
